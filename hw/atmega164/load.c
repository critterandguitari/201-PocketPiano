#include <avr/io.h>
#include <avr/interrupt.h>
#include <inttypes.h>
#include <math.h>
#include <avr/sleep.h>
#include "apa102.h"
#include "i2c_peripheral.h"

#define I2C_ADDR 0x10
#define INT_ON PORTC|=(1<<2);
#define INT_OFF PORTC&=~(1<<2);
#define DELAY8	{asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");}

// data peripheral output, buttons and knobs
uint8_t data_po[7] = {0xFF,0XFF,0XFF,0,0,0,0};  // 3 bytes for buttons, 4 bytes knobs
uint8_t debounce_timer[21] = {0,0,0,0, 0,0,0,0, 0,0,0,0, 0,0,0,0, 0,0,0,0, 0};
uint8_t buttons[21] = {1,1,1,1, 1,1,1,1, 1,1,1,1, 1,1,1,1, 1,1,1,1, 1};

// data peripheral input, all leds
uint8_t data_pi[9] = {  10,0,0,
                        20,0,0,
                        50,0,0};

extern uint8_t i2c_recv_index;
extern uint8_t i2c_send_index;

void i2c_received(uint8_t received_data) {
    data_pi[i2c_recv_index] = received_data;
    i2c_recv_index++;
    if (i2c_recv_index == 9) i2c_recv_index = 0;
 }

void i2c_requested() {
    // buttons and knobs being read, so clear the interrupt output
    INT_OFF;
    i2c_transmitByte(data_po[i2c_send_index]);
    i2c_send_index++;
    if (i2c_send_index == 7) i2c_send_index = 0;
}

// short delay in miliseconds (sort of)
void delay_ms(uint16_t dtime){
    uint32_t time;
    time = dtime;
    time *= 125;
    while(time){
        DELAY8;DELAY8;DELAY8;DELAY8;DELAY8;DELAY8;DELAY8;
        time--;
    }
}

void read_adc(void) {
    uint8_t ch = 0;
    for (ch = 0; ch < 4; ch++) {
        ADMUX = ch;
        ADMUX |= (1 << 5);    // left justify the result, 8 bits in ADCH
        ADCSRA = 0xD6;        // start it
        while(!(ADCSRA & 1<<ADIF));
        data_po[ch + 3] = ADCH;  // data_po is 3 byte for 21 buttons, 4 bytes knobs
    }
}

void set_leds(void) {
    apa102_start();
    for (uint8_t i = 0; i < 3; i++){
        apa102_set_led(data_pi[i*3], data_pi[(i*3)+1], data_pi[(i*3)+2]);
    }
    apa102_end();
}

int main(void) {

    // disable jtag
    MCUCR|= (1<<JTD);
    MCUCR|= (1<<JTD);
    
    delay_ms(1);

    // buttons are on port D, set input, pullups on
    DDRD = 0;
    PORTD = 0xFF;

    DDRC &= ~((1<<3)|(1<<4)|(1<<5)|(1<<6)|(1<<7));
    PORTC |=  ((1<<3)|(1<<4)|(1<<5)|(1<<6)|(1<<7));
     
    DDRB &= ~((1<<0)|(1<<1)|(1<<2)|(1<<3)|(1<<4));
    PORTB |= ((1<<0)|(1<<1)|(1<<2)|(1<<3)|(1<<4));
     
    DDRA &= ~((1<<5)|(1<<6)|(1<<7));
    PORTA |= ((1<<5)|(1<<6)|(1<<7));

    // output interrupt signal on PC2
    DDRC |= (1<<2);
    INT_OFF;
    
    // init LEDs
    apa102_init();

    // init I2C
    i2c_setCallbacks(i2c_received, i2c_requested);
    i2c_init(I2C_ADDR);
    
    sei();
    
    //for(;;){
        apa102_set_all_leds(0, 0, 0);delay_ms(300);
        apa102_set_all_leds(100, 0, 0);delay_ms(300);
        apa102_set_all_leds(0, 100, 0);delay_ms(300);
        apa102_set_all_leds(0, 0, 100);delay_ms(300);
    //}
    uint8_t ms_count = 0;
    uint8_t button_changed = 0;
    for(;;) {
        
        // every 10 ms
        if (ms_count >= 10) {
            ms_count = 0;
            // set the leds with values from i2c
            set_leds();

            // get adc values
            read_adc();
        }
        else ms_count++;
 
        for (uint8_t i = 0; i < 21; i++) {

            // button out of debounce interval
            if (debounce_timer[i] == 0) {
                
                uint8_t tmp = 0;

                // get buttons
                if (i == 0) tmp = (PIND >> 0) & 1;
                if (i == 1) tmp = (PIND >> 1) & 1;
                if (i == 2) tmp = (PIND >> 2) & 1;
                if (i == 3) tmp = (PIND >> 3) & 1;
               
                if (i == 4) tmp = (PIND >> 4) & 1;
                if (i == 5) tmp = (PIND >> 5) & 1;
                if (i == 6) tmp = (PIND >> 6) & 1;
                if (i == 7) tmp = (PIND >> 7) & 1;
                
                if (i == 8) tmp = (PINC >> 3) & 1;
                if (i == 9) tmp = (PINC >> 4) & 1;
                if (i == 10) tmp = (PINC >> 5) & 1;
                if (i == 11) tmp = (PINC >> 6) & 1;
                
                if (i == 12) tmp = (PINC >> 7) & 1;
                if (i == 13) tmp = (PINA >> 5) & 1;
                if (i == 14) tmp = (PINA >> 6) & 1;
                if (i == 15) tmp = (PINA >> 7) & 1;
                
                if (i == 16) tmp = (PINB >> 0) & 1;
                if (i == 17) tmp = (PINB >> 1) & 1;
                if (i == 18) tmp = (PINB >> 2) & 1;
                if (i == 19) tmp = (PINB >> 3) & 1;
                
                if (i == 20) tmp = (PINB >> 4) & 1;

                
                // check if changed
                if (tmp != buttons[i]) {
                    buttons[i] = tmp;
                    debounce_timer[i] = 25;
                    button_changed = 1;
                }
            }
            else {
                debounce_timer[i]--;
            }
        }
            
        if (button_changed) {
            // update and send it out. use tmp so data_po is updated atomically 
            uint8_t tmp0, tmp1, tmp2;
            tmp0=tmp1=tmp2=0;
            for (uint8_t i = 0; i < 8; i++){
                if (buttons[i]) tmp0 |= (1<<i);
                if (buttons[i + 8]) tmp1 |= (1<<i);
                if (buttons[i + 16]) tmp2 |= (1<<i);
            }
            data_po[0] = tmp0;
            data_po[1] = tmp1;
            data_po[2] = tmp2;
            
            INT_ON;
            button_changed = 0;
        }

        delay_ms(1);

    } // for(;;);
} // main()
