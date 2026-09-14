#include "adxl345.h"
#include "stm32f4xx.h"

#define CS_LOW()  (GPIOA->BSRR = GPIO_BSRR_BR_6)

#define CS_HIGH() (GPIOA->BSRR = GPIO_BSRR_BS_6)

static void SPI1_Init(void){
    RCC->AHB1ENR |= RCC_AHB1ENR_GPIOAEN;

    RCC->APB2ENR |= RCC_APB2ENR_SPI1EN;
    /* PA5 = SCK
     * PA6 = MISO
     * PA7 = MOSI  */
    GPIOA->MODER &= ~(GPIO_MODER_MODER5 | GPIO_MODER_MODER6 | GPIO_MODER_MODER7);
    GPIOA->MODER |= GPIO_MODER_MODER5_1 | GPIO_MODER_MODER6_1 | GPIO_MODER_MODER7_1;

    /* AF5 */
    GPIOA->AFR[0] &= ~(GPIO_AFRL_AFRL5 | GPIO_AFRL_AFRL6 | GPIO_AFRL_AFRL7);

    GPIOA->AFR[0] |= (5 << GPIO_AFRL_AFSEL5_Pos) | (5 << GPIO_AFRL_AFSEL6_Pos) | (5 << GPIO_AFRL_AFSEL7_Pos);

    /*
     * SPI master
     * Software NSS
     * CPOL = 1
     * CPHA = 1
     */

    SPI1->CR1 = 0;

    SPI1->CR1 |= SPI_CR1_MSTR;
    SPI1->CR1 |= SPI_CR1_SSM;
    SPI1->CR1 |= SPI_CR1_SSI;

    SPI1->CR1 |= SPI_CR1_CPOL;
    SPI1->CR1 |= SPI_CR1_CPHA;

    SPI1->CR1 |= SPI_CR1_BR_1;
    SPI1->CR1 |= SPI_CR1_SPE;
}

static uint8_t SPI1_Transfer(uint8_t data){
    while (!(SPI1->SR & SPI_SR_TXE));

    *((volatile uint8_t *)&SPI1->DR) = data;

    while (!(SPI1->SR & SPI_SR_RXNE));

    return *((volatile uint8_t *)&SPI1->DR);
}

void ADXL345_Init(void){
    uint8_t device_id;
    // CS - PB6
    RCC->AHB1ENR |= RCC_AHB1ENR_GPIOBEN;

    GPIOA->MODER &= ~GPIO_MODER_MODER6;
    GPIOA->MODER |= GPIO_MODER_MODER6_0;

    CS_HIGH();

    SPI1_Init();

    device_id = ADXL345_ReadReg(ADXL345_DEVID);
    if (device_id != 0xE5)
    {
        return;
    }

    //800 Hz data rate
    ADXL345_WriteReg(ADXL345_BW_RATE, 0x0C);

    //Full resolution ±4g
    ADXL345_WriteReg(ADXL345_DATA_FORMAT, 0x09);

    //Measurement mode
    ADXL345_WriteReg(ADXL345_POWER_CTL, 0x08);
}


void ADXL345_WriteReg(uint8_t reg, uint8_t value){
    CS_LOW();

    SPI1_Transfer(reg);
    SPI1_Transfer(value);

    CS_HIGH();
}


uint8_t ADXL345_ReadReg(uint8_t reg){
    uint8_t value;

    CS_LOW();

    SPI1_Transfer(reg | 0x80);

    value = SPI1_Transfer(0x00);

    CS_HIGH();

    return value;
}


void ADXL345_ReadXYZ(ADXL345_RawData_t *data){
    uint8_t x0, x1;
    uint8_t y0, y1;
    uint8_t z0, z1;

    CS_LOW();

    //Multi-byte read
    SPI1_Transfer(ADXL345_DATAX0 | 0x80 | 0x40 );

    x0 = SPI1_Transfer(0);
    x1 = SPI1_Transfer(0);

    y0 = SPI1_Transfer(0);
    y1 = SPI1_Transfer(0);

    z0 = SPI1_Transfer(0);
    z1 = SPI1_Transfer(0);

    CS_HIGH();

    data->x = (int16_t)((x1 << 8) | x0);
    data->y = (int16_t)((y1 << 8) | y0);
    data->z = (int16_t)((z1 << 8) | z0);
}

float ADXL345_ConvertToG(int16_t raw){
	// Approximately 3.9 mg/LSB in full-resolution mode.
    return raw * 0.0039f;
}
