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

// osc handlers
void error(int num, const char *m, const char *path);
int led_handler(const char *path, const char *types, lo_arg ** argv, int argc, void *data, void *user_data);
int led1_handler(const char *path, const char *types, lo_arg ** argv, int argc, void *data, void *user_data);
int led2_handler(const char *path, const char *types, lo_arg ** argv, int argc, void *data, void *user_data);
int led3_handler(const char *path, const char *types, lo_arg ** argv, int argc, void *data, void *user_data);
void map_led_color(uint8_t color, uint8_t *rgb);
int poweroff_handler(const char *path, const char *types, lo_arg ** argv, int argc, void *data, void *user_data);

struct i2c_dev i2c;

// data to and from the peripheral
#define DATA_PI_SIZE 9
#define DATA_PO_SIZE 7
uint8_t data_pi[DATA_PI_SIZE] = {  100,0,0,
                        0,100,0,
                        0,0,100};
uint8_t data_po[DATA_PO_SIZE] = {0,0,0,0,0,0,0};
uint32_t buttons_last[21] = {1,1,1,1, 1,1,1,1, 1,1,1,1, 1,1,1,1, 1,1,1,1, 1};
int fd;
struct pollfd pfd;
uint8_t int_pin;
int ret;


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
    lo_address t = lo_address_new("localhost", "4000");
    //lo_address t = lo_address_new("192.168.1.124", "4000");

    // setup osc server and add led method
    lo_server_thread st = lo_server_thread_new("4001", error);
    lo_server_thread_add_method(st, "/led", "i", led_handler, NULL);
    lo_server_thread_add_method(st, "/led1", "i", led1_handler, NULL);
    lo_server_thread_add_method(st, "/led2", "i", led2_handler, NULL);
    lo_server_thread_add_method(st, "/led3", "i", led3_handler, NULL);
    lo_server_thread_add_method(st, "/poweroff", "i", poweroff_handler, NULL);
    lo_server_thread_start(st); 
 
    usleep(10000); 
    i2c_write(&i2c, data_pi, DATA_PI_SIZE);

    timer_reset();
    //start the patch
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
                lo_send(t, "/aux", "i", ~(buttons >> 20) & 1);
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
                check_for_reload();
                lo_send(t, "/aux", "i", ~(buttons >> 20) & 1);
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
    // reload combo is  shift + keys 13,15,18 (high c#, d#, f#)
    if(!buttons_last[13] && !buttons_last[15] && !buttons_last[18] && !buttons_last[20]){
        load_patch();
    }
}

void load_patch() {
    printf("(re)loading patch \n");

    printf("signal pd \n");
    system("killall pd");

    printf("remount sdcard...\n");
    system("umount /sdcard");
    system("mount /dev/mmcblk1p2 /sdcard");
    system("( cd /sdcard/pd ; pd -nogui -rt -audiobuf 5 -path lib mother.pd ) &");
}

void error(int num, const char *msg, const char *path) {
    printf("liblo server error %d in path %s: %s\n", num, path, msg);
    fflush(stdout);
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
    return 0;
}



