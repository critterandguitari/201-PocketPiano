
#include <linux/i2c-dev.h>
#include <sys/ioctl.h>

#include <unistd.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>

#include "i2c.h"

int i2c_init(struct i2c_dev* dev) {
	int fd;
	int rc;

	fd = open(dev->filename, O_RDWR);
	if (fd < 0) {
		rc = fd;
	    return rc;
	}

    // set peripheral address
	rc = ioctl(fd, I2C_SLAVE, dev->addr);
	if (rc < 0) {
	    close(fd);
        return rc;
	}

	dev->fd = fd;

	return 0;
}

int i2c_read(struct i2c_dev* dev, uint8_t *buf, size_t buf_len) {
	return read(dev->fd, buf, buf_len);
}

int i2c_write(struct i2c_dev* dev, uint8_t *buf, size_t buf_len) {
	return write(dev->fd, buf, buf_len);
}

void i2c_stop(struct i2c_dev* dev) {
	close(dev->fd);
}
