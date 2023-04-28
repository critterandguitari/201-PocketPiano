# 1 "apa102.c"
# 1 "/Users/owen1/repos/pp22/interface/mcu-i2c/atmega164//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "apa102.c"
# 1 "/usr/local/Cellar/avr-gcc@9/9.3.0_3/avr/include/avr/io.h" 1 3
# 99 "/usr/local/Cellar/avr-gcc@9/9.3.0_3/avr/include/avr/io.h" 3
# 1 "/usr/local/Cellar/avr-gcc@9/9.3.0_3/avr/include/avr/sfr_defs.h" 1 3
# 126 "/usr/local/Cellar/avr-gcc@9/9.3.0_3/avr/include/avr/sfr_defs.h" 3
# 1 "/usr/local/Cellar/avr-gcc@9/9.3.0_3/avr/include/inttypes.h" 1 3
# 37 "/usr/local/Cellar/avr-gcc@9/9.3.0_3/avr/include/inttypes.h" 3
# 1 "/usr/local/Cellar/avr-gcc@9/9.3.0_3/lib/avr-gcc/9/gcc/avr/9.3.0/include/stdint.h" 1 3 4
# 9 "/usr/local/Cellar/avr-gcc@9/9.3.0_3/lib/avr-gcc/9/gcc/avr/9.3.0/include/stdint.h" 3 4
# 1 "/usr/local/Cellar/avr-gcc@9/9.3.0_3/avr/include/stdint.h" 1 3 4
# 125 "/usr/local/Cellar/avr-gcc@9/9.3.0_3/avr/include/stdint.h" 3 4

# 125 "/usr/local/Cellar/avr-gcc@9/9.3.0_3/avr/include/stdint.h" 3 4
typedef signed int int8_t __attribute__((__mode__(__QI__)));
typedef unsigned int uint8_t __attribute__((__mode__(__QI__)));
typedef signed int int16_t __attribute__ ((__mode__ (__HI__)));
typedef unsigned int uint16_t __attribute__ ((__mode__ (__HI__)));
typedef signed int int32_t __attribute__ ((__mode__ (__SI__)));
typedef unsigned int uint32_t __attribute__ ((__mode__ (__SI__)));

typedef signed int int64_t __attribute__((__mode__(__DI__)));
typedef unsigned int uint64_t __attribute__((__mode__(__DI__)));
# 146 "/usr/local/Cellar/avr-gcc@9/9.3.0_3/avr/include/stdint.h" 3 4
typedef int16_t intptr_t;




typedef uint16_t uintptr_t;
# 163 "/usr/local/Cellar/avr-gcc@9/9.3.0_3/avr/include/stdint.h" 3 4
typedef int8_t int_least8_t;




typedef uint8_t uint_least8_t;




typedef int16_t int_least16_t;




typedef uint16_t uint_least16_t;




typedef int32_t int_least32_t;




typedef uint32_t uint_least32_t;







typedef int64_t int_least64_t;






typedef uint64_t uint_least64_t;
# 217 "/usr/local/Cellar/avr-gcc@9/9.3.0_3/avr/include/stdint.h" 3 4
typedef int8_t int_fast8_t;




typedef uint8_t uint_fast8_t;




typedef int16_t int_fast16_t;




typedef uint16_t uint_fast16_t;




typedef int32_t int_fast32_t;




typedef uint32_t uint_fast32_t;







typedef int64_t int_fast64_t;






typedef uint64_t uint_fast64_t;
# 277 "/usr/local/Cellar/avr-gcc@9/9.3.0_3/avr/include/stdint.h" 3 4
typedef int64_t intmax_t;




typedef uint64_t uintmax_t;
# 10 "/usr/local/Cellar/avr-gcc@9/9.3.0_3/lib/avr-gcc/9/gcc/avr/9.3.0/include/stdint.h" 2 3 4
# 38 "/usr/local/Cellar/avr-gcc@9/9.3.0_3/avr/include/inttypes.h" 2 3
# 77 "/usr/local/Cellar/avr-gcc@9/9.3.0_3/avr/include/inttypes.h" 3
typedef int32_t int_farptr_t;



typedef uint32_t uint_farptr_t;
# 127 "/usr/local/Cellar/avr-gcc@9/9.3.0_3/avr/include/avr/sfr_defs.h" 2 3
# 100 "/usr/local/Cellar/avr-gcc@9/9.3.0_3/avr/include/avr/io.h" 2 3
# 280 "/usr/local/Cellar/avr-gcc@9/9.3.0_3/avr/include/avr/io.h" 3
# 1 "/usr/local/Cellar/avr-gcc@9/9.3.0_3/avr/include/avr/iom164.h" 1 3
# 38 "/usr/local/Cellar/avr-gcc@9/9.3.0_3/avr/include/avr/iom164.h" 3
# 1 "/usr/local/Cellar/avr-gcc@9/9.3.0_3/avr/include/avr/iomxx4.h" 1 3
# 918 "/usr/local/Cellar/avr-gcc@9/9.3.0_3/avr/include/avr/iomxx4.h" 3
       
# 919 "/usr/local/Cellar/avr-gcc@9/9.3.0_3/avr/include/avr/iomxx4.h" 3

       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
# 39 "/usr/local/Cellar/avr-gcc@9/9.3.0_3/avr/include/avr/iom164.h" 2 3
# 281 "/usr/local/Cellar/avr-gcc@9/9.3.0_3/avr/include/avr/io.h" 2 3
# 585 "/usr/local/Cellar/avr-gcc@9/9.3.0_3/avr/include/avr/io.h" 3
# 1 "/usr/local/Cellar/avr-gcc@9/9.3.0_3/avr/include/avr/portpins.h" 1 3
# 586 "/usr/local/Cellar/avr-gcc@9/9.3.0_3/avr/include/avr/io.h" 2 3

# 1 "/usr/local/Cellar/avr-gcc@9/9.3.0_3/avr/include/avr/common.h" 1 3
# 588 "/usr/local/Cellar/avr-gcc@9/9.3.0_3/avr/include/avr/io.h" 2 3

# 1 "/usr/local/Cellar/avr-gcc@9/9.3.0_3/avr/include/avr/version.h" 1 3
# 590 "/usr/local/Cellar/avr-gcc@9/9.3.0_3/avr/include/avr/io.h" 2 3






# 1 "/usr/local/Cellar/avr-gcc@9/9.3.0_3/avr/include/avr/fuse.h" 1 3
# 239 "/usr/local/Cellar/avr-gcc@9/9.3.0_3/avr/include/avr/fuse.h" 3
typedef struct
{
    unsigned char low;
    unsigned char high;
    unsigned char extended;
} __fuse_t;
# 597 "/usr/local/Cellar/avr-gcc@9/9.3.0_3/avr/include/avr/io.h" 2 3


# 1 "/usr/local/Cellar/avr-gcc@9/9.3.0_3/avr/include/avr/lock.h" 1 3
# 600 "/usr/local/Cellar/avr-gcc@9/9.3.0_3/avr/include/avr/io.h" 2 3
# 2 "apa102.c" 2
# 1 "/usr/local/Cellar/avr-gcc@9/9.3.0_3/lib/avr-gcc/9/gcc/avr/9.3.0/include/stdbool.h" 1 3 4
# 3 "apa102.c" 2
# 1 "apa102.h" 1
# 10 "apa102.h"

# 10 "apa102.h"
void apa102_init(void);
void apa102_transmit_byte(uint8_t data);
void apa102_start(void);
void apa102_end(void);
void apa102_set_led(uint8_t r, uint8_t g, uint8_t b);
void apa102_set_all_leds(uint8_t r, uint8_t g, uint8_t b);
# 4 "apa102.c" 2
# 16 "apa102.c"
void apa102_init(void) {
# 44 "apa102.c"
    
# 44 "apa102.c" 3
   (*(volatile uint8_t *)((0x04) + 0x20)) 
# 44 "apa102.c"
            |= (1 << 
# 44 "apa102.c" 3
                     5
# 44 "apa102.c"
                         );
    
# 45 "apa102.c" 3
   (*(volatile uint8_t *)((0x04) + 0x20)) 
# 45 "apa102.c"
           |= (1 << 
# 45 "apa102.c" 3
                    7
# 45 "apa102.c"
                       );

    
# 47 "apa102.c" 3
   (*(volatile uint8_t *)((0x05) + 0x20)) 
# 47 "apa102.c"
             |= (1 << 
# 47 "apa102.c" 3
                      5
# 47 "apa102.c"
                          );
    
# 48 "apa102.c" 3
   (*(volatile uint8_t *)((0x05) + 0x20)) 
# 48 "apa102.c"
            |= (1 << 
# 48 "apa102.c" 3
                     7
# 48 "apa102.c"
                        );

}

void apa102_transmit_byte(uint8_t data) {




    for (uint8_t i = 0; i<8; i++){
        
# 58 "apa102.c" 3
       (*(volatile uint8_t *)((0x05) + 0x20)) 
# 58 "apa102.c"
                &= ~(1<<
# 58 "apa102.c" 3
                        7
# 58 "apa102.c"
                           );
        if ((data>>i)&1) 
# 59 "apa102.c" 3
                        (*(volatile uint8_t *)((0x05) + 0x20))
# 59 "apa102.c"
                                 |=(1<<
# 59 "apa102.c" 3
                                       5
# 59 "apa102.c"
                                           );
        else (
# 60 "apa102.c" 3
             (*(volatile uint8_t *)((0x05) + 0x20))
# 60 "apa102.c"
                      &=~(1<<
# 60 "apa102.c" 3
                             5
# 60 "apa102.c"
                                 ));
        asm volatile("nop");
        
# 62 "apa102.c" 3
       (*(volatile uint8_t *)((0x05) + 0x20)) 
# 62 "apa102.c"
                |= (1 << 
# 62 "apa102.c" 3
                         7
# 62 "apa102.c"
                            );
        asm volatile("nop");
    }

}

void apa102_start(void) {
    for (uint8_t i = 0; i < 4; i++) {
        apa102_transmit_byte(0x00);
    }
}



void apa102_end(void) {
    uint8_t total_leds = 3;
    uint8_t stop_bytes = (total_leds + 15) / 16;
    for (uint8_t i = 0; i < stop_bytes; i++) {
        apa102_transmit_byte(0xff);
    }
}


void apa102_set_led(uint8_t r, uint8_t g, uint8_t b) {
    apa102_transmit_byte(0xff);
    apa102_transmit_byte(r);
    apa102_transmit_byte(g);
    apa102_transmit_byte(b);
}


void apa102_set_all_leds(uint8_t r, uint8_t g, uint8_t b) {
    apa102_start();
    for (uint8_t i = 0; i < 3; i++) {
        apa102_set_led(r,g,b);
    }
    apa102_end();
}
