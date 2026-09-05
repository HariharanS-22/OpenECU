/*
 * ds18b20.c
 *
 *  Created on: 04-Sept-2026
 *      Author: Hariharan
 */
#include "ds18b20.h"
#include "timer.h"

#define DS18B20_PIN        1U

#define DS18B20_PORT       GPIOA

static void DS18B20_PinOutput(void)
{
    DS18B20_PORT->MODER &= ~(3U << (DS18B20_PIN * 2U));
    DS18B20_PORT->MODER |=  (1U << (DS18B20_PIN * 2U));

    //Open-drain
    DS18B20_PORT->OTYPER |= (1U << DS18B20_PIN);
}


static void DS18B20_PinInput(void)
{
    DS18B20_PORT->MODER &= ~(3U << (DS18B20_PIN * 2U));
}

static void DS18B20_Low(void)
{
    DS18B20_PinOutput();

    DS18B20_PORT->BSRR = (1U << (DS18B20_PIN + 16U));
}

static void DS18B20_Release(void)
{
    DS18B20_PinInput();
}


static uint8_t DS18B20_ReadPin(void)
{
    return (uint8_t)  ((DS18B20_PORT->IDR >> DS18B20_PIN) & 1U);
}


void DS18B20_Init(void)
{
	//Enable GPIOA
    RCC->AHB1ENR |= RCC_AHB1ENR_GPIOAEN;

    //Enable Open drain
    DS18B20_PORT->OTYPER |=  (1U << DS18B20_PIN);

    //Release bus
    DS18B20_Release();
}

static uint8_t DS18B20_Reset(void)
{
    uint8_t presence;

    //Master pulls bus LOW
    DS18B20_Low();

    //Reset pulse >= 480 us
    TimerDelay_us(480U);

    //Release bus
    DS18B20_Release();

    //Wait before sampling presence
    TimerDelay_us(70U);

    //DS18B20 pulls LOW if present
    presence = !DS18B20_ReadPin();

    //Finish reset time slot
    TimerDelay_us(410U);

    return presence;
}


static void DS18B20_WriteBit(uint8_t bit)
{
    if (bit)
    {
        //Write 1 - Pull Low briefly
        DS18B20_Low();
        TimerDelay_us(6U);

        DS18B20_Release();
        TimerDelay_us(64U);
    }
    else
    {
        //Write 0 - Pull Low
        DS18B20_Low();

        TimerDelay_us(60U);

        DS18B20_Release();

        TimerDelay_us(10U);
    }
}


static uint8_t DS18B20_ReadBit(void)
{
    uint8_t bit;

    DS18B20_Low();

    TimerDelay_us(3U);

    DS18B20_Release();

    TimerDelay_us(10U);

    bit = DS18B20_ReadPin();

    TimerDelay_us(50U);

    return bit;
}

static void DS18B20_WriteByte(uint8_t data)
{
    for (uint8_t i = 0U; i < 8U; i++)
    {
        DS18B20_WriteBit(data & 0x01U);

        data >>= 1U;
    }
}

static uint8_t DS18B20_ReadByte(void)
{
    uint8_t data = 0U;

    for (uint8_t i = 0U; i < 8U; i++)
    {
        data >>= 1U;

        if (DS18B20_ReadBit())
        {
            data |= 0x80U;
        }
    }

    return data;
}

int16_t DS18B20_ReadTemperature(void)
{
    uint8_t tempLSB;
    uint8_t tempMSB;

    int16_t rawTemperature;

    if (!DS18B20_Reset())
    {
        return INT16_MIN;
    }

    //SKIP ROM
    DS18B20_WriteByte(0xCCU);

    //CONVERT T
    DS18B20_WriteByte(0x44U);


    /*
     * Wait for conversion.
     *
     * At 12-bit resolution:
     * maximum conversion time ≈ 750 ms
     */
    TimerDelay_ms(750U);

    if (!DS18B20_Reset())
    {
        return INT16_MIN;
    }
    //SKIP ROM
    DS18B20_WriteByte(0xCCU);

    //READ SCRATCHPAD
    DS18B20_WriteByte(0xBEU);

    //Read temperature registers
    tempLSB = DS18B20_ReadByte();
    tempMSB = DS18B20_ReadByte();

    rawTemperature = (int16_t)(((uint16_t)tempMSB << 8U) | tempLSB);

    return (int16_t) (((int32_t)rawTemperature * 625) / 100);
}
