#define     SETUP_REG       0x00
#define     MUX_REG         0x01
#define     ACR_REG         0x02
#define     ODAC_REG        0x03
#define     DIO_REG         0x04
#define     DIR_REG         0x05
#define     IOCON_REG       0x06
#define     OCR0_REG        0x07
#define     OCR1_REG        0x08
#define     OCR2_REG        0x09
#define     FSR0_REG        0x0A
#define     FSR1_REG        0x0B
#define     FSR2_REG        0x0C
#define     DOR2_REG        0x0D
#define     DOR1_REG        0x0E
#define     DOR0_REG        0x0F

// ADS1241 Commands
#define     RDATA_CMD       0x01
#define     RDATAC_CMD      0x03
#define     STOPC_CMD       0x0F
#define     RREG_CMD        0x10
#define     WREG_CMD        0x50
#define     SELFCAL_CMD     0xF0
#define     SELFOCAL_CMD    0xF1
#define     SELFGCAL_CMD    0xF2
#define     SYSOCAL_CMD     0xF3
#define     SYSGCAL_CMD     0xF4
#define     WAKEUP_CMD      0xFB
#define     DSYNC_CMD       0xFC
#define     SLEEP_CMD       0xFD
#define     RESET_CMD       0xFE

// MUX Chanel - Postive/negative
// ie AIN0_AIN1 means a differentiel conversion between AIN0(+) and AIN1(-) chanel
// ie AIN2 means a single ended input chanel (refered to GND)
#define     AIN0_AIN1       0x01
#define     AIN2_AIN3       0x23
#define     AIN4_AIN5       0x45
#define     AIN6_AIN7       0x67


#define     GAIN_1          0x00
#define     GAIN_2          0x01
#define     GAIN_4          0x02
#define     GAIN_8          0x03
#define     GAIN_16         0x04
#define     GAIN_32         0x05
#define     GAIN_64         0x06
#define     GAIN_128        0x07
