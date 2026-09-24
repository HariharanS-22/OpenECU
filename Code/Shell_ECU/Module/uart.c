/*
 * uart.c
 *
 *  Created on: Mar 9, 2026
 *      Author: Hariharan
 */
#include "uart.h"

#define GPIOA_EN    (1UL << 2)
#define USART2_EN   (1UL << 17)

#define CR1_TE		(1UL << 3)
#define CR1_RE		(1UL << 2)
#define CR1_UE		(1UL << 13)    		//USART ENABLE

#define SR_TXE 		(1UL << 7)
#define SR_RXNE     (1UL << 5)

#define SYS_FREQ 	(8000000UL)			//8 MHz - Default CLK MAX_CLK = 72 MHz
#define APB1_CLK 	SYS_FREQ

#define UART_BAUDRATE  (115200UL)
//PA2 - UART_TX Mode - 11 (Output - 50 MHz) CNF - 10 (AF)
#define PA2_USART2_TX       (0xBUL << 8)
//PA3 - UART_RX Mode - 00 (Input) CNF - 10 (Floating input)
#define PA3_USART2_RX       (0x4UL << 12)

static void UART_SetBaudRate(USART_TypeDef *USART, uint32_t PeriphClk, uint32_t BaudRate){
	uint16_t BaudRate_div = ((PeriphClk + (BaudRate)/2) / BaudRate);

	//Set the BaudRate calculated to the BBR
	USART->BRR = BaudRate_div;
}

void UART2_RxTxInit(void){
	/* CONFIGURE UART GPIO PINS */
	/* Enable clock access to GPIOA - AHB1 */
	RCC->APB2ENR |= GPIOA_EN;

	//Clear PA2 and PA3 configuration first
    GPIOA->CRL &= ~(0xFF << 8);

    GPIOA->CRL |= PA2_USART2_TX;
    GPIOA->CRL |= PA3_USART2_RX;

	/* CONFIGURE UART MODULE */
	/* Enable clock access to UART2 - APB1 */
	RCC->APB1ENR |= USART2_EN;

	/* Configure BaudRate */
	UART_SetBaudRate(USART2, APB1_CLK, UART_BAUDRATE);

	/* Configure the Transfer Direction */
	USART2->CR1 = (CR1_TE | CR1_RE);

	/* Enable USART */
	USART2->CR1 |= CR1_UE;
}
char UART2_Read(void){
	//Make sure the Received Data Register is not empty
	while (!(USART2->SR & SR_RXNE)){}

	return (char)USART2->DR;
}

void UART2_Write(int ch){
	//Make sure the Transmit data register is empty
	/*  0: Data is not transferred to the shift register
		1: Data is transferred to the shift register)
		Note: This bit is used during single buffer transmission.
	 */
	while (!(USART2->SR & SR_TXE)){}

	USART2->DR = (ch & 0xFF);      //8 bit
}

int _write(int file, char *ptr, int len)
{
    for(int i = 0; i < len; i++)
    {
        UART2_Write(ptr[i]);
    }

    return len;
}

int _read(int file, char *ptr, int len)
{
    int count = 0;
    char ch;

    while(count < len)
    {
        ch = UART2_Read();

        if(ch == '\r')
        {
            UART2_Write('\r');
            UART2_Write('\n');

            ptr[count++] = '\n';
            break;
        }

        UART2_Write(ch);

        ptr[count++] = ch;
    }

    return count;
}

void customPrint(char *buf, int len){

	for(int i=0;i<len;i++){
		UART2_Write(buf[i]);
	}

	return;
}
