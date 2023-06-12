MCU=atmega164p
CC=avr-gcc
OBJCOPY=avr-objcopy
# optimize for size:
#CFLAGS=-g -mmcu=$(MCU) -Wall -Wstrict-prototypes -O0 -mcall-prologues
CFLAGS =-mmcu=$(MCU) 
CFLAGS += -Os -g -std=gnu99 -Wall
CFLAGS += -funsigned-char -funsigned-bitfields -fpack-struct -fshort-enums
CFLAGS += -ffunction-sections -fdata-sections
CFLAGS += -Wno-unused-parameter -Wfloat-equal -Wundef -Wshadow
CFLAGS += -Wpointer-arith -Wcast-align -Wstrict-prototypes
CFLAGS += -Wstrict-overflow=5 -Wwrite-strings
CFLAGS += -Wswitch-enum -Wunreachable-code -Wformat=2
CFLAGS += -Winit-self




#-------------------
all: load.hex
#-------------------
load.hex : load.out 
	$(OBJCOPY) -R .eeprom -O ihex load.out load.hex 
load.out : load.o 
	$(CC) $(CFLAGS) -o load.out -Wl,-Map,load.map load.o apa102.o i2c_peripheral.o 
load.o : load.c apa102.c i2c_peripheral.c
	$(CC) $(CFLAGS) -save-temps -c load.c apa102.c i2c_peripheral.c
# you need to erase first before loading the program.
# load (program) the software into the eeprom:
load: load.hex
	avrdude -p atmega164p -c usbtiny -U flash:w:load.hex 

#-------------------
clean:
	rm -f *.o *.map *.out
#-------------------
