#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <stdint.h>
#include <fcntl.h>
#include <poll.h>
#include <lo/lo.h>
#include <sys/time.h>
#include "i2c.h"

struct timeval start, stop;

void timer_reset(void) {
    gettimeofday(&start, NULL);
}


// time in ms
float timer_get_elapsed(void) {
    gettimeofday(&stop, NULL);
    long elapsed_sec = stop.tv_sec - start.tv_sec;
    long elapsed_usec = stop.tv_usec - start.tv_usec;
    float e = (float)elapsed_sec + (float)elapsed_usec / 1000000.f;
    return e * 1000.f;
}

// patch loading stuff
void check_for_reload(); // checks key combo for reloading patch
void load_patch();
void toggle_disk_mode();

// osc handlers
void error(int num, const char *m, const char *path);
int led_handler(const char *path, const char *types, lo_arg ** argv, int argc, void *data, void *user_data);
int leds_handler(const char *path, const char *types, lo_arg ** argv, int argc, void *data, void *user_data);
int led1_handler(const char *path, const char *types, lo_arg ** argv, int argc, void *data, void *user_data);
int led2_handler(const char *path, const char *types, lo_arg ** argv, int argc, void *data, void *user_data);
int led3_handler(const char *path, const char *types, lo_arg ** argv, int argc, void *data, void *user_data);
void map_led_color(uint8_t color, uint8_t *rgb);
int poweroff_handler(const char *path, const char *types, lo_arg ** argv, int argc, void *data, void *user_data);

struct i2c_dev i2c;

// data to and from the peripheral
#define DATA_PI_SIZE 9
#define DATA_PO_SIZE 7
uint8_t data_pi[DATA_PI_SIZE] = {  1,1,1,
                                   1,1,1,
                                   1,1,1};
uint8_t data_po[DATA_PO_SIZE] = {0,0,0,0,0,0,0};
uint32_t buttons_last[21] = {1,1,1,1, 1,1,1,1, 1,1,1,1, 1,1,1,1, 1,1,1,1, 1};
int fd;
struct pollfd pfd;
uint8_t int_pin;
int ret;
int mode = 0;  // mode of operation, 0 = normal / play mode, 1 = USB file transfer / test mode 

lo_address t; // osc sender

int main() {

    // enable amp
    fd = open("/sys/class/gpio/export", O_WRONLY);
    write(fd, "8", 1);
    close(fd);
    fd = open("/sys/class/gpio/gpio8/direction", O_WRONLY);
    write(fd, "out", 3);
    close(fd);
    fd = open("/sys/class/gpio/gpio8/value", O_WRONLY);
    write(fd, "1", 1); // set it

	//Enable gpio8, input, interrupt rising edge
	fd = open("/sys/class/gpio/export", O_WRONLY);
	write(fd, "9", 1);
	close(fd);
	fd = open("/sys/class/gpio/gpio9/direction", O_WRONLY); 
	write(fd, "in", 2);
	close(fd);
	fd = open("/sys/class/gpio/gpio9/edge", O_WRONLY);
	write(fd, "rising", 6);//write(fd, "both", 4);
	close(fd);
	fd = open("/sys/class/gpio/gpio9/value", O_RDONLY);
	pfd.fd = fd;
	pfd.events = POLLPRI;

    printf("opening i2c port\n");
    i2c.addr = 0x10;
    i2c.filename = "/dev/i2c-0";
    i2c_init(&i2c);
    printf("opened \n");

    // setup osc sender 
    t = lo_address_new("localhost", "4000");
    //lo_address t = lo_address_new("192.168.1.124", "4000");

    // setup osc server and add led method
    lo_server_thread st = lo_server_thread_new("4001", error);
    lo_server_thread_add_method(st, "/led", "i", led_handler, NULL);
    lo_server_thread_add_method(st, "/led1", "i", led1_handler, NULL);
    lo_server_thread_add_method(st, "/led2", "i", led2_handler, NULL);
    lo_server_thread_add_method(st, "/led3", "i", led3_handler, NULL);
    lo_server_thread_add_method(st, "/leds", "iiiiiiiii", leds_handler, NULL);
    lo_server_thread_add_method(st, "/poweroff", "i", poweroff_handler, NULL);
    lo_server_thread_start(st); 
 
    usleep(10000); 

    // check if this is a first time boot and we need to enlarge second partition
/*    if (access("/etc/app-sdcard-format.lock", F_OK) != -1) {
        printf("partition 2 already resized \n");
    } else {
        printf("resizing partition \n");

        // red leds
        uint8_t final_leds[DATA_PI_SIZE] = {  0,0,20,
                                              0,0,20,
                                              0,0,20};
        i2c_write(&i2c, final_leds, DATA_PI_SIZE);
         
        system("/home/root/app/hw/scripts/part-enlarge.sh");
    }*/


    i2c_write(&i2c, data_pi, DATA_PI_SIZE);

    timer_reset();

    //start the patch
    mode = 0;  // play mode
    
    // shouldn't be in disk mode at this point, but just in case disable
    system("rmmod g_mass_storage");
    load_patch();
    
    for (;;){
        
        // wait up to 50ms for int pin
		lseek(fd, 0, SEEK_SET);
		ret = poll(&pfd, 1, 50);
		read(fd, &int_pin, 1);      
        // get keys, knobs, set leds if ~50 ms has elapsed
        if (timer_get_elapsed() > 49) {
            timer_reset();
            
            i2c_read(&i2c, data_po, DATA_PO_SIZE);
            uint32_t buttons;
            buttons = data_po[0] | (data_po[1] << 8) | (data_po[2] << 16);
            
            // first 20 are keys 
            for(uint8_t i = 0; i < 20; i++){
                if (((buttons >> i) & 1) != buttons_last[i]){
                    buttons_last[i] = (buttons >> i) & 1;
                    lo_send(t, "/key", "ii", i, ~(buttons >> i) & 1);
                }
            }
            
            // last one is aux
            if (((buttons >> 20) & 1) != buttons_last[20]){
                buttons_last[20] = (buttons >> 20) & 1;
                check_for_reload();
                lo_send(t, "/shift", "i", ~(buttons >> 20) & 1);
            }

            // send knobs 
            lo_send(t, "/knobs", "iiii", data_po[6], data_po[3], data_po[5], data_po[4]);
            
        }
        // just get the keys if 50 ms not yet elapsed
        else {
            i2c_read(&i2c, data_po, 3);
            uint32_t buttons;
            buttons = data_po[0] | (data_po[1] << 8) | (data_po[2] << 16);
            
            // first 20 are keys 
            for(uint8_t i = 0; i < 20; i++){
                if (((buttons >> i) & 1) != buttons_last[i]){
                    buttons_last[i] = (buttons >> i) & 1;
                    lo_send(t, "/key", "ii", i, ~(buttons >> i) & 1);
                }
            }
            
            // last one is aux
            if (((buttons >> 20) & 1) != buttons_last[20]){
                buttons_last[20] = (buttons >> 20) & 1;
                check_for_reload();  // only check for reload whe shift is pressed
                lo_send(t, "/shift", "i", ~(buttons >> 20) & 1);
            }
        }

    }
    // bye bye
    lo_server_thread_free(st);
    
    // disable gpio8
	fd = open("/sys/class/gpio/unexport", O_WRONLY);
	write(fd, "9", 1);
	close(fd);
    return 0;
}

void check_for_reload(){
    //  switch to disk mode is shift + keys 13,15,18 (high c#, d#, f#)
    //  patch is also reloaded bc /sdcard gets mounted read only in disk mode
    if(!buttons_last[13] && !buttons_last[15] && !buttons_last[18] && !buttons_last[20]){
        printf("CHANGE TO DISKMODE \n");
        mode++;
        mode &= 0x1;
        toggle_disk_mode();
        load_patch();
    }

    // reload patch, without switching in or out of disk mode is shift + 16, 17, 19 (high e,f,g)
    if(!buttons_last[16] && !buttons_last[17] && !buttons_last[19] && !buttons_last[20]){
        printf("RELOAD PATCH \n");
        load_patch();
    }
}

void toggle_disk_mode() {

    // play mode
    if (mode == 0) {
        printf("signal pd \n");
        lo_send(t, "/quitpd", "i", 1);
        usleep(120000);
        system("killall pd");

        printf("unmount sdcard...\n");
        system("umount /sdcard");
        
        printf("disable usb file transfer mode...\n");
        system("rmmod g_mass_storage");
    }

    // usb drive mode
    else if (mode == 1){
        printf("signal pd \n");
        lo_send(t, "/quitpd", "i", 1);
        usleep(120000);
        system("killall pd");

        // in disk mode, need to remount bc files might have changed
        printf("unmount sdcard...\n");
        system("umount /sdcard");

        printf("start usb file transfer mode \n");
        system("rmmod g_mass_storage");
        system("modprobe g_mass_storage file=/dev/mmcblk1p2 stall=0 removable=1");
    }
}

void load_patch() {
    printf("(re)loading patch \n");

    // play mode
    if (mode == 0) {
        printf("signal pd \n");
        lo_send(t, "/quitpd", "i", 1);
        usleep(120000);
        system("killall pd");

        printf("unmount sdcard...\n");
        system("umount /sdcard");
        printf("mounting sd card read only...\n");
        system("mount /dev/mmcblk1p2 /sdcard");

        printf("run main patch\n");
        system("/home/root/app/hw/scripts/run-patch.sh");
        system("/home/root/app/hw/scripts/connect-midi.sh &");
    }

    // usb drive mode
    else if (mode == 1){
        printf("signal pd \n");
        lo_send(t, "/quitpd", "i", 1);
        usleep(120000);
        system("killall pd");

        printf("unmount sdcard...\n");
        system("umount /sdcard");
        printf("mounting sd card read only...\n");
        system("mount -o ro /dev/mmcblk1p2 /sdcard");  // in disk mode read only

        printf("run main patch\n");
        system("/home/root/app/hw/scripts/run-patch.sh");
        system("/home/root/app/hw/scripts/connect-midi.sh &");

    }
}

void error(int num, const char *msg, const char *path) {
    printf("liblo server error %d in path %s: %s\n", num, path, msg);
    fflush(stdout);
}

int leds_handler(const char *path, const char *types, lo_arg ** argv, int argc, void *data, void *user_data) {
    
    data_pi[8] = argv[0]->i;
    data_pi[7] = argv[1]->i;
    data_pi[6] = argv[2]->i;
     
    data_pi[5] = argv[3]->i;
    data_pi[4] = argv[4]->i;
    data_pi[3] = argv[5]->i;
     
    data_pi[2] = argv[6]->i;
    data_pi[1] = argv[7]->i;
    data_pi[0] = argv[8]->i;
       
    i2c_write(&i2c, data_pi, DATA_PI_SIZE);
    return 0;

}

int led_handler(const char *path, const char *types, lo_arg ** argv, int argc, void *data, void *user_data) {
    return 0;
}

int led1_handler(const char *path, const char *types, lo_arg ** argv, int argc, void *data, void *user_data) {
    uint8_t color = argv[0]->i;
    uint8_t rgb[3];
    map_led_color(color, rgb);
    data_pi[6] = rgb[2];
    data_pi[7] = rgb[1];
    data_pi[8] = rgb[0];
    i2c_write(&i2c, data_pi, DATA_PI_SIZE);
    return 0;

}

int led2_handler(const char *path, const char *types, lo_arg ** argv, int argc, void *data, void *user_data) {
    uint8_t color = argv[0]->i;
    uint8_t rgb[3];
    map_led_color(color, rgb);
    data_pi[3] = rgb[2];
    data_pi[4] = rgb[1];
    data_pi[5] = rgb[0];
    i2c_write(&i2c, data_pi, DATA_PI_SIZE);
    return 0;
}

int led3_handler(const char *path, const char *types, lo_arg ** argv, int argc, void *data, void *user_data) {
    uint8_t color = argv[0]->i;
    uint8_t rgb[3];
    map_led_color(color, rgb);
    data_pi[0] = rgb[2];
    data_pi[1] = rgb[1];
    data_pi[2] = rgb[0];

    i2c_write(&i2c, data_pi, DATA_PI_SIZE);
    return 0;
}

void map_led_color(uint8_t color, uint8_t *rgb){
    if      (color == 0)     {rgb[0]=0;rgb[1]=0;rgb[2]=0;} 
    else if (color == 1)     {rgb[0]=100;rgb[1]=0;rgb[2]=0;} 
    else if (color == 2)     {rgb[0]=100;rgb[1]=100;rgb[2]=0;} 
    else if (color == 3)     {rgb[0]=0;rgb[1]=100;rgb[2]=0;} 
    else if (color == 4)     {rgb[0]=0;rgb[1]=100;rgb[2]=100;} 
    else if (color == 5)     {rgb[0]=0;rgb[1]=0;rgb[2]=100;} 
    else if (color == 6)     {rgb[0]=100;rgb[1]=0;rgb[2]=100;} 
    else if (color == 7)     {rgb[0]=100;rgb[1]=100;rgb[2]=100;} 
}


int poweroff_handler(const char *path, const char *types, lo_arg ** argv, int argc, void *data, void *user_data) {
        
    uint8_t fl[DATA_PI_SIZE] = {  20,0,5,
                                          0,0,0,
                                          0,0,0};
    
    // animate while we wait for shutdown        
    for (;;) {
        fl[0]=20;fl[1]=0;fl[2]=5;fl[3]=0;fl[4]=0;fl[5]=0;fl[6]=0;fl[7]=0;fl[8]=0;
        i2c_write(&i2c, fl, DATA_PI_SIZE);
        usleep(300000); 
        fl[0]=0;fl[1]=0;fl[2]=0;fl[3]=20;fl[4]=0;fl[5]=5;fl[6]=0;fl[7]=0;fl[8]=0;
        i2c_write(&i2c, fl, DATA_PI_SIZE);
        usleep(300000); 
        fl[0]=0;fl[1]=0;fl[2]=0;fl[3]=0;fl[4]=0;fl[5]=0;fl[6]=20;fl[7]=0;fl[8]=5;
        i2c_write(&i2c, fl, DATA_PI_SIZE);
        usleep(300000); 
    }

    return 0;
}   
