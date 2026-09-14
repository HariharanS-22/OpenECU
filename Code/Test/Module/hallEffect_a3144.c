/*
 * hallEffect_a3144.c
 *
 *  Created on: 14-Sept-2026
 *      Author: Hariharan
 */

#include "hallEffect_a3144.h"

static volatile uint32_t previousCapture = 0U;
static volatile uint32_t capturePeriod = 0U;
static volatile float currentRPM = 0.0f;
static volatile uint8_t rpmValid = 0U;
static volatile uint32_t lastPulseTick = 0U;

volatile uint32_t A3144_PulseCounter = 0U;

#define A3144_TIMER_FREQUENCY_HZ     10000.0f
#define A3144_TIMER_PRESCALER        (8400U - 1U)
#define A3144_TIMER_MAX              65535U

void A3144_Init(void)
{
	//Enable GPIOB clock.
    RCC->AHB1ENR |= A3144_GPIO_CLOCK;

    A3144_GPIO_PORT->MODER &= ~(GPIO_MODER_MODER4);

    A3144_GPIO_PORT->MODER |= GPIO_MODER_MODER4_1;

    //PB4 -> AF2 -> TIM3_CH1
    A3144_GPIO_PORT->AFR[0] &= ~( GPIO_AFRL_AFRL4);

    A3144_GPIO_PORT->AFR[0] |= (A3144_GPIO_AF << GPIO_AFRL_AFSEL4_Pos);

    //Pull Up
    A3144_GPIO_PORT->PUPDR &= ~( GPIO_PUPDR_PUPDR4);

    A3144_GPIO_PORT->PUPDR |= GPIO_PUPDR_PUPDR4_0;


    //Initialize TIM3 input capture.
    A3144_TimerCapture_Init();
}

void A3144_TimerCapture_Init(void)
{
	//Enable TIM3 clock.
    RCC->APB1ENR |= RCC_APB1ENR_TIM3EN;

    TIM3->CR1 = 0U;

    TIM3->PSC = A3144_TIMER_PRESCALER;

    TIM3->ARR = A3144_TIMER_MAX;


    //Reset counter.
    TIM3->CNT = 0U;

    TIM3->CCMR1 &= ~TIM_CCMR1_CC1S;

    TIM3->CCMR1 |= TIM_CCMR1_CC1S_0;

    TIM3->CCMR1 &= ~TIM_CCMR1_IC1F;

    TIM3->CCMR1 |=  (3U << TIM_CCMR1_IC1F_Pos);

    TIM3->CCMR1 &= ~TIM_CCMR1_IC1PSC;

    /* Capture on rising edge.
     * CC1P = 0
     * CC1NP = 0     */
    TIM3->CCER &= ~( TIM_CCER_CC1P | TIM_CCER_CC1NP);

    //Enable capture on channel 1
    TIM3->CCER |= TIM_CCER_CC1E;

    //Enable capture interrupt
    TIM3->DIER |= TIM_DIER_CC1IE;

    //Enable TIM3 interrupt in NVIC
    NVIC_SetPriority( TIM3_IRQn, 5);

    NVIC_EnableIRQ( TIM3_IRQn);

    TIM3->CR1 |= TIM_CR1_CEN;
}

void TIM3_IRQHandler(void)
{
    if (TIM3->SR & TIM_SR_CC1IF){
        uint32_t currentCapture;

        currentCapture = TIM3->CCR1;


        if (currentCapture >= previousCapture)
        {
            capturePeriod = currentCapture - previousCapture;
        }
        else{
            capturePeriod = ( (A3144_TIMER_MAX - previousCapture) + currentCapture + 1U);
        }

        previousCapture =  currentCapture;

        if (capturePeriod != 0U)
        {
            currentRPM = ( A3144_TIMER_FREQUENCY_HZ * 60.0f ) / ( (float)capturePeriod * (float)A3144_PULSES_PER_REVOLUTION);

            rpmValid = 1U;
        }

        A3144_PulseCounter++;

        TIM3->SR &= ~TIM_SR_CC1IF;
    }
}

uint32_t A3144_GetCapturePeriod(void){
    uint32_t period;

    period = capturePeriod;

    return period;
}

float A3144_GetRPM(void){
    if (rpmValid == 0U)
    {
        return 0.0f;
    }


    return currentRPM;
}

uint8_t A3144_IsRotating(void){
    if (rpmValid != 0U &&
        currentRPM > 0.0f)
    {
        return 1U;
    }


    return 0U;
}

void A3144_Reset(void){
    previousCapture = 0U;
    capturePeriod = 0U;
    currentRPM = 0.0f;
    rpmValid = 0U;
    A3144_PulseCounter = 0U;
}
