#include <avr/io.h>
#include <stdbool.h>
#include "apa102.h"

#define SCK_DDR DDRB 
#define SCK PB7
#define SCK_PORT PORTB
#define MOSI_DDR DDRB
#define MOSI PB5
#define MOSI_PORT PORTB
#define SS_DDR DDRB
#define SS PB4
#define SS_PORT PORTB


void apa102_init(void) {
/*
    // have to unfortunately set SS as output
    SS_DDR |= (1 << SS);
    SS_PORT |= (1 << SS);

    
    MOSI_DDR |= (1 << MOSI);
    SCK_DDR |= (1 << SCK);

    // mosi high
    MOSI_PORT |= (1 << MOSI);

    // enable spi
    SPCR |= (1 << SPE);

    // set as master
    SPCR |= 1 << MSTR;

    // set clock polarity/phase to mode 3
    SPCR |= (1 << CPOL) | (1 << CPHA);

    // set clock scale to 1/2
    SPSR |= 1 << SPI2X;
    SPCR |= (1 << SPR1) | (1 << SPR0);
*/
    
    // for bit banging
    MOSI_DDR |= (1 << MOSI);
    SCK_DDR |= (1 << SCK);
    
    MOSI_PORT |= (1 << MOSI);
    SCK_PORT |= (1 << SCK);

}

void apa102_transmit_byte(uint8_t data) {
    //SPDR = data;
    //while (!(SPSR & (1 << SPIF))) {}
    
    
    for (uint8_t i = 0; i<8; i++){
        SCK_PORT &= ~(1<<SCK);
        if ((data>>i)&1) MOSI_PORT|=(1<<MOSI);
        else (MOSI_PORT&=~(1<<MOSI));
        asm volatile("nop");
        SCK_PORT |= (1 << SCK);
        asm volatile("nop");
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

