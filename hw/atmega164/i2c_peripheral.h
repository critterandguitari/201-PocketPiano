#ifndef i2c_PERIPHERAL_H
#define i2c_PERIPHERAL_H

#include <avr/interrupt.h>
#include <stdint.h>

void i2c_init(uint8_t address);
void i2c_stop(void);
void i2c_setCallbacks(void (*recv)(uint8_t), void (*req)());

inline void __attribute__((always_inline)) i2c_transmitByte(uint8_t data)
{
  TWDR = data;
}

ISR(TWI_vect);

#endif
