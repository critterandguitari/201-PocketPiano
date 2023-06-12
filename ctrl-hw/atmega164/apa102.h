

#define SCK_DDR DDRB 
#define SCK PB7
#define MOSI_DDR DDRB
#define MOSI PB5
#define MOSI_PORT PORTB
#define LED_COUNT 3

void apa102_init(void);
void apa102_transmit_byte(uint8_t data);
void apa102_start(void);
void apa102_end(void);
void apa102_set_led(uint8_t r, uint8_t g, uint8_t b);
void apa102_set_all_leds(uint8_t r, uint8_t g, uint8_t b);
