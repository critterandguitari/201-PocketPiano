#include <util/twi.h>
#include <avr/interrupt.h>

#include "i2c_peripheral.h"

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
  cli();
  // load address into TWI address register
  TWAR = address << 1;
  // set the TWCR to enable address matching and enable TWI, clear TWINT, enable TWI interrupt
  TWCR = (1<<TWIE) | (1<<TWEA) | (1<<TWINT) | (1<<TWEN);
  sei();
}

void i2c_stop(void)
{
  // clear acknowledge and enable bits
  cli();
  TWCR = 0;
  TWAR = 0;
  sei();
}

ISR(TWI_vect)
{
  switch(TW_STATUS)
  {
    case TW_SR_SLA_ACK:
      // peripheral selected, reset index
      i2c_recv_index = 0; 
      TWCR = (1<<TWIE) | (1<<TWINT) | (1<<TWEA) | (1<<TWEN);
      break;
    case TW_SR_DATA_ACK:
      // received data from master, call the receive callback
      i2c_recv(TWDR); 
      TWCR = (1<<TWIE) | (1<<TWINT) | (1<<TWEA) | (1<<TWEN);
      break;
    case TW_ST_SLA_ACK:
      // master is requesting data, call the request callback
      i2c_send_index = 0;
      i2c_req();
      TWCR = (1<<TWIE) | (1<<TWINT) | (1<<TWEA) | (1<<TWEN);
      break;
    case TW_ST_DATA_ACK:
      // master is requesting data, call the request callback
      i2c_req();
      TWCR = (1<<TWIE) | (1<<TWINT) | (1<<TWEA) | (1<<TWEN);
      break;
    case TW_BUS_ERROR:
      // some sort of erroneous state, prepare TWI to be readdressed
      TWCR = 0;
      TWCR = (1<<TWIE) | (1<<TWINT) | (1<<TWEA) | (1<<TWEN); 
      break;
    default:
      TWCR = (1<<TWIE) | (1<<TWINT) | (1<<TWEA) | (1<<TWEN);
      break;
  }
} 
