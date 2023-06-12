

#ifndef SRC_I2C_H_
#define SRC_I2C_H_

#include <stdint.h>

struct i2c_dev {
	char* filename; 
	uint16_t addr; 
	int fd; 
};

int i2c_init(struct i2c_dev* dev);
int i2c_read(struct i2c_dev* dev, uint8_t *buf, size_t buf_len);
int i2c_write(struct i2c_dev* dev, uint8_t *buf, size_t buf_len);
void i2c_stop(struct i2c_dev* dev);

#endif 
