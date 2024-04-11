# 1 "i2c_peripheral.c"
# 1 "/Users/owen1/repos/201-PocketPiano/hw/atmega164//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "i2c_peripheral.c"
# 1 "/usr/local/Cellar/avr-gcc@9/9.3.0_3/avr/include/util/twi.h" 1 3
# 38 "/usr/local/Cellar/avr-gcc@9/9.3.0_3/avr/include/util/twi.h" 3
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
# 39 "/usr/local/Cellar/avr-gcc@9/9.3.0_3/avr/include/util/twi.h" 2 3
# 2 "i2c_peripheral.c" 2
# 1 "/usr/local/Cellar/avr-gcc@9/9.3.0_3/avr/include/avr/interrupt.h" 1 3
# 3 "i2c_peripheral.c" 2

# 1 "i2c_peripheral.h" 1







# 7 "i2c_peripheral.h"
void i2c_init(uint8_t address);
void i2c_stop(void);
void i2c_setCallbacks(void (*recv)(uint8_t), void (*req)());

inline void __attribute__((always_inline)) i2c_transmitByte(uint8_t data)
{
  
# 13 "i2c_peripheral.h" 3
 (*(volatile uint8_t *)(0xBB)) 
# 13 "i2c_peripheral.h"
      = data;
}


# 16 "i2c_peripheral.h" 3
void __vector_26 (void) __attribute__ ((signal,used, externally_visible)) ; void __vector_26 (void)
# 16 "i2c_peripheral.h"
            ;
# 5 "i2c_peripheral.c" 2

uint8_t i2c_recv_index = 0;
uint8_t i2c_send_index = 0;

static void (*i2c_recv)(uint8_t);
static void (*i2c_req)();

void i2c_setCallbacks(void (*recv)(uint8_t), void (*req)())
{
  i2c_recv = recv;
  i2c_req = req;
}

void i2c_init(uint8_t address)
{
  
# 20 "i2c_peripheral.c" 3
 __asm__ __volatile__ ("cli" ::: "memory")
# 20 "i2c_peripheral.c"
      ;

  
# 22 "i2c_peripheral.c" 3
 (*(volatile uint8_t *)(0xBA)) 
# 22 "i2c_peripheral.c"
      = address << 1;

  
# 24 "i2c_peripheral.c" 3
 (*(volatile uint8_t *)(0xBC)) 
# 24 "i2c_peripheral.c"
      = (1<<
# 24 "i2c_peripheral.c" 3
            0
# 24 "i2c_peripheral.c"
                ) | (1<<
# 24 "i2c_peripheral.c" 3
                        6
# 24 "i2c_peripheral.c"
                            ) | (1<<
# 24 "i2c_peripheral.c" 3
                                    7
# 24 "i2c_peripheral.c"
                                         ) | (1<<
# 24 "i2c_peripheral.c" 3
                                                 2
# 24 "i2c_peripheral.c"
                                                     );
  
# 25 "i2c_peripheral.c" 3
 __asm__ __volatile__ ("sei" ::: "memory")
# 25 "i2c_peripheral.c"
      ;
}

void i2c_stop(void)
{

  
# 31 "i2c_peripheral.c" 3
 __asm__ __volatile__ ("cli" ::: "memory")
# 31 "i2c_peripheral.c"
      ;
  
# 32 "i2c_peripheral.c" 3
 (*(volatile uint8_t *)(0xBC)) 
# 32 "i2c_peripheral.c"
      = 0;
  
# 33 "i2c_peripheral.c" 3
 (*(volatile uint8_t *)(0xBA)) 
# 33 "i2c_peripheral.c"
      = 0;
  
# 34 "i2c_peripheral.c" 3
 __asm__ __volatile__ ("sei" ::: "memory")
# 34 "i2c_peripheral.c"
      ;
}


# 37 "i2c_peripheral.c" 3
void __vector_26 (void) __attribute__ ((signal,used, externally_visible)) ; void __vector_26 (void)

# 38 "i2c_peripheral.c"
{
  switch(
# 39 "i2c_peripheral.c" 3
        ((*(volatile uint8_t *)(0xB9)) & ((1 << (7))|(1 << (6))|(1 << (5))|(1 << (4))| (1 << (3))))
# 39 "i2c_peripheral.c"
                 )
  {
    case 
# 41 "i2c_peripheral.c" 3
        0x60
# 41 "i2c_peripheral.c"
                     :

      i2c_recv_index = 0;
      
# 44 "i2c_peripheral.c" 3
     (*(volatile uint8_t *)(0xBC)) 
# 44 "i2c_peripheral.c"
          = (1<<
# 44 "i2c_peripheral.c" 3
                0
# 44 "i2c_peripheral.c"
                    ) | (1<<
# 44 "i2c_peripheral.c" 3
                            7
# 44 "i2c_peripheral.c"
                                 ) | (1<<
# 44 "i2c_peripheral.c" 3
                                         6
# 44 "i2c_peripheral.c"
                                             ) | (1<<
# 44 "i2c_peripheral.c" 3
                                                     2
# 44 "i2c_peripheral.c"
                                                         );
      break;
    case 
# 46 "i2c_peripheral.c" 3
        0x80
# 46 "i2c_peripheral.c"
                      :

      i2c_recv(
# 48 "i2c_peripheral.c" 3
              (*(volatile uint8_t *)(0xBB))
# 48 "i2c_peripheral.c"
                  );
      
# 49 "i2c_peripheral.c" 3
     (*(volatile uint8_t *)(0xBC)) 
# 49 "i2c_peripheral.c"
          = (1<<
# 49 "i2c_peripheral.c" 3
                0
# 49 "i2c_peripheral.c"
                    ) | (1<<
# 49 "i2c_peripheral.c" 3
                            7
# 49 "i2c_peripheral.c"
                                 ) | (1<<
# 49 "i2c_peripheral.c" 3
                                         6
# 49 "i2c_peripheral.c"
                                             ) | (1<<
# 49 "i2c_peripheral.c" 3
                                                     2
# 49 "i2c_peripheral.c"
                                                         );
      break;
    case 
# 51 "i2c_peripheral.c" 3
        0xA8
# 51 "i2c_peripheral.c"
                     :

      i2c_send_index = 0;
      i2c_req();
      
# 55 "i2c_peripheral.c" 3
     (*(volatile uint8_t *)(0xBC)) 
# 55 "i2c_peripheral.c"
          = (1<<
# 55 "i2c_peripheral.c" 3
                0
# 55 "i2c_peripheral.c"
                    ) | (1<<
# 55 "i2c_peripheral.c" 3
                            7
# 55 "i2c_peripheral.c"
                                 ) | (1<<
# 55 "i2c_peripheral.c" 3
                                         6
# 55 "i2c_peripheral.c"
                                             ) | (1<<
# 55 "i2c_peripheral.c" 3
                                                     2
# 55 "i2c_peripheral.c"
                                                         );
      break;
    case 
# 57 "i2c_peripheral.c" 3
        0xB8
# 57 "i2c_peripheral.c"
                      :

      i2c_req();
      
# 60 "i2c_peripheral.c" 3
     (*(volatile uint8_t *)(0xBC)) 
# 60 "i2c_peripheral.c"
          = (1<<
# 60 "i2c_peripheral.c" 3
                0
# 60 "i2c_peripheral.c"
                    ) | (1<<
# 60 "i2c_peripheral.c" 3
                            7
# 60 "i2c_peripheral.c"
                                 ) | (1<<
# 60 "i2c_peripheral.c" 3
                                         6
# 60 "i2c_peripheral.c"
                                             ) | (1<<
# 60 "i2c_peripheral.c" 3
                                                     2
# 60 "i2c_peripheral.c"
                                                         );
      break;
    case 
# 62 "i2c_peripheral.c" 3
        0x00
# 62 "i2c_peripheral.c"
                    :

      
# 64 "i2c_peripheral.c" 3
     (*(volatile uint8_t *)(0xBC)) 
# 64 "i2c_peripheral.c"
          = 0;
      
# 65 "i2c_peripheral.c" 3
     (*(volatile uint8_t *)(0xBC)) 
# 65 "i2c_peripheral.c"
          = (1<<
# 65 "i2c_peripheral.c" 3
                0
# 65 "i2c_peripheral.c"
                    ) | (1<<
# 65 "i2c_peripheral.c" 3
                            7
# 65 "i2c_peripheral.c"
                                 ) | (1<<
# 65 "i2c_peripheral.c" 3
                                         6
# 65 "i2c_peripheral.c"
                                             ) | (1<<
# 65 "i2c_peripheral.c" 3
                                                     2
# 65 "i2c_peripheral.c"
                                                         );
      break;
    default:
      
# 68 "i2c_peripheral.c" 3
     (*(volatile uint8_t *)(0xBC)) 
# 68 "i2c_peripheral.c"
          = (1<<
# 68 "i2c_peripheral.c" 3
                0
# 68 "i2c_peripheral.c"
                    ) | (1<<
# 68 "i2c_peripheral.c" 3
                            7
# 68 "i2c_peripheral.c"
                                 ) | (1<<
# 68 "i2c_peripheral.c" 3
                                         6
# 68 "i2c_peripheral.c"
                                             ) | (1<<
# 68 "i2c_peripheral.c" 3
                                                     2
# 68 "i2c_peripheral.c"
                                                         );
      break;
  }
}
