#include <avr/io.h>
#include <stdbool.h>
#include "apa102.h"

#define DATA_HI PORTB|=(1<<5);
#define DATA_LOW PORTB&=~(1<<5);

#define SCK_HI PORTB|=(1<<7);
#define SCK_LOW PORTB&=~(1<<7);

#define LED_COUNT 3

void apa102_init(void) {
    
    DDRB |= ((1<<5)|(1<<7));
    PORTB |= ((1<<5)|(1<<7));

}

void apa102_transmit_byte(uint8_t data) {
    for (int i = 0; i < 8; ++i) {
        if (data & 0x80) {
            DATA_HI;
        } else {
            DATA_LOW;
        }
        __asm__ __volatile__ ("nop");
        SCK_LOW; // Clock goes low: Data is shifted
        __asm__ __volatile__ ("nop");
        SCK_HI;  // Clock goes high: Data is sampled
        data <<= 1;
    }
}

void apa102_start(void) {
    for (uint8_t i = 0; i < 4; i++) {
        apa102_transmit_byte(0x00);
    }
}

// from https://cpldcpu.wordpress.com/2014/11/30/understanding-the-apa102-superled/
// An end frame consisting of at least (n/2) bits of 1, where n is the number of LEDs in the string.
void apa102_end(void) {
    uint8_t total_leds = LED_COUNT;
    uint8_t stop_bytes = (total_leds + 15) / 16;
    for (uint8_t i = 0; i < stop_bytes; i++) {
        apa102_transmit_byte(0xff);
    }
}

/* Send an LED frame with the given color at full brightness */
void apa102_set_led(uint8_t r, uint8_t g, uint8_t b) {
    apa102_transmit_byte(0xff);
    apa102_transmit_byte(r);
    apa102_transmit_byte(g);
    apa102_transmit_byte(b);
}

/* Set all the LEDs to the given color */
void apa102_set_all_leds(uint8_t r, uint8_t g, uint8_t b) {
    apa102_start();
    for (uint8_t i = 0; i < LED_COUNT; i++) {
        apa102_set_led(r,g,b);
    }
    apa102_end();
}

