/*
 * fan.c
 *
 *  Created on: 05-Sept-2026
 *      Author: Hariharan
 */

#include "Fan.h"

#define FAN_IN1_PIN        0U
#define FAN_IN2_PIN        1U

#define FAN_PWM_PIN        6U

#define FAN_PWM_PERIOD     999U

void Fan_Init(void)
{
	//Enable GPIOA and GPIOB clocks
    RCC->AHB1ENR |= RCC_AHB1ENR_GPIOAEN;
    RCC->AHB1ENR |= RCC_AHB1ENR_GPIOBEN;

    //PA6 -> TIM3_CH1
    //Alternate function mode
    GPIOA->MODER &= ~(3U << (FAN_PWM_PIN * 2U));
    GPIOA->MODER |=  (2U << (FAN_PWM_PIN * 2U));

    //AF2 = TIM3
    GPIOA->AFR[0] &= ~(0xFU << (FAN_PWM_PIN * 4U));
    GPIOA->AFR[0] |=  (2U   << (FAN_PWM_PIN * 4U));

    //PB0 / PB1 -> L298N IN1 / IN2
    GPIOB->MODER &= ~( (3U << (FAN_IN1_PIN * 2U)) | (3U << (FAN_IN2_PIN * 2U)) );

    GPIOB->MODER |= ( (1U << (FAN_IN1_PIN * 2U)) | (1U << (FAN_IN2_PIN * 2U)) );

    //Forward direction
    GPIOB->ODR |=  (1U << FAN_IN1_PIN);
    GPIOB->ODR &= ~(1U << FAN_IN2_PIN);

    //TIM3 configuration

    RCC->APB1ENR |= RCC_APB1ENR_TIM3EN;

    TIM3->PSC = 15U;

    TIM3->ARR = FAN_PWM_PERIOD;

    //PWM Mode 1 - OC1M = 110
    TIM3->CCMR1 &= ~(7U << 4U);
    TIM3->CCMR1 |=  (6U << 4U);

    TIM3->CCMR1 |= TIM_CCMR1_OC1PE;

    //Enable CH1
    TIM3->CCER |= TIM_CCER_CC1E;

    TIM3->CCR1 = 0U;

    //Enable ARR preload
    TIM3->CR1 |= TIM_CR1_ARPE;

    TIM3->EGR |= TIM_EGR_UG;

    //Start timer
    TIM3->CR1 |= TIM_CR1_CEN;
}

void Fan_SetSpeed(uint8_t duty)
{
    if (duty > 100U)
    {
        duty = 100U;
    }
    // 0% - 0 | 100% - 999
    TIM3->CCR1 = ((uint32_t)duty * FAN_PWM_PERIOD) / 100U;
}

void Fan_Stop(void)
{
    TIM3->CCR1 = 0U;
}
