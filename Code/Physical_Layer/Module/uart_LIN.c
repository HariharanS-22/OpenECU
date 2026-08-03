/*
 * uart_LIN.c
 *
 *  Created on: 31-Jul-2026
 *      Author: Hariharan
 */

#include "uart_LIN.h"

uint8_t LIN_msgReceived = 0;
CommStats_t LIN_Stats = {0};

static void UART_SetBaudRate(USART_TypeDef *USART, uint32_t PeriphClk, uint32_t BaudRate){
	uint16_t BaudRate_div = ((PeriphClk + (BaudRate)/2) / BaudRate);

	//Set the BaudRate calculated to the BBR
	USART->BRR = BaudRate_div;
}

void UART1_Init(void){
	/* Enable clock access to GPIOA - AHB1 */
	RCC->AHB1ENR |= GPIOA_EN;

	/* Set PA9  - USART1_TX - AF07 | PA10 - USART1_RX - AF07  */
	GPIOA->MODER &= ~(0xF << 18);
	GPIOA->MODER |= PA9_AF | PA10_AF;

	GPIOA->AFR[1] &= ~(0xFF << 4);
	GPIOA->AFR[1] |= (AF7 << 4) | (AF7 << 8);

	/* Enable clock access to UART1 - APB2 */
	RCC->APB2ENR |= UART1_EN;

	/* Configure BaudRate */
	UART_SetBaudRate(USART1, APB2_CLK, UART_BAUDRATE);

	/* Configure the Transfer Direction - No parity*/
	USART1->CR1 = (CR1_TE | CR1_RE);

}

void UART1_Write(int ch){
	//Make sure the Transmit data register is empty
	/*  0: Data is not transferred to the shift register
		1: Data is transferred to the shift register)
		Note: This bit is used during single buffer transmission.
	 */
	while (!(USART1->SR & SR_TXE)){}

	USART1->DR = (ch & 0xFF);    //8 bit

	while(!(USART1->SR & SR_TC));

}

uint8_t UART1_Read(void){
	//Make sure the Received Data Register is not empty
	while (!(USART1->SR & SR_RXNE)){}

	return (uint8_t)(USART1->DR);
}

void LIN_Init(void){

	UART1_Init();
	/* Enable LIN Mode */
	USART1->CR2 |= CR2_LINEN;

	/* Enable 11-bit break detection (LIN - 13 bit) */
	USART1->CR2 |= CR2_LBDL;

	USART1->CR2 &= ~(0x7 << 11);

	/* Clear LIN Break flag */
	USART1->SR &= ~SR_LBD;

	/* Enable LIN Break Detection Interrupt */
	USART1->CR2 |= CR2_LBDIE;

	USART1->CR3 = 0;

	/* Enable USART Interrupt */
	NVIC_EnableIRQ(USART1_IRQn);

	/* Enable USART */
	USART1->CR1 |= CR1_UE;
}

uint8_t LIN_Receive(void){
	//Make sure the Received Data Register is not empty
	while (!(USART1->SR & SR_RXNE)){}

	return USART1->DR;
}

static void LIN_Sendbreak(void)
{
    /* Transmit Break */
    USART1->CR1 |= CR1_SBK;

    /* Wait until Break transmission completes */
    while(!(USART1->SR & USART_SR_TC));

    USART1->CR1 &= ~CR1_SBK;

}

void LIN_Transmit(uint8_t ID, uint8_t* data, uint8_t size){

	CommStats_StartTimer(&LIN_Stats);

	LIN_Sendbreak();

	UART1_Write(0x55);

	uint8_t PID = LIN_PIDCal(ID);
	UART1_Write(PID);

	for(uint8_t i=0 ; i<8 ; i++){
		UART1_Write(data[i]);
	}

	UART1_Write(LIN_ChecksumCal(PID, data, size));

	CommStats_StopTimer(&LIN_Stats);
	LIN_Stats.TxPackets++;
	LIN_Stats.TxBytes+=size;
}

uint8_t LIN_PIDCal(uint8_t ID){

	ID &= 0x3F;		//Error Check

	uint8_t ID_buf[8];
	for(uint8_t i=0; i<6 ; i++){
		ID_buf[i] = (ID >> i) & 0x1 ;
	}

	uint8_t P0 = (ID_buf[0] ^ ID_buf[1] ^ ID_buf[2] ^ ID_buf[4]) & 1;
	uint8_t P1 = (~(ID_buf[1] ^ ID_buf[3] ^ ID_buf[4] ^ ID_buf[5]) & 1 );

	return (uint8_t)(ID | (P0 << 6) | (P1 << 7));
}

uint8_t LIN_ChecksumCal(uint8_t PID, uint8_t* data, uint8_t size){
	uint16_t sum = PID;

	for(uint8_t i=0 ; i<size ; i++){
		sum += data[i];

		if(sum > 0xFF) sum = sum - 0xFF;
	}

	sum = 0xFF - sum;
	return sum;
}

void USART1_IRQHandler(void)
{
    /* Break detected */
    if(USART1->SR & SR_LBD)
    {
        USART1->SR &= ~SR_LBD;

        LIN_msgReceived=1;
    }
}


//int _write(int file, char *ptr, int len)
//{
//    for(int i = 0; i < len; i++)
//    {
//        UART1_Write(ptr[i]);
//    }
//
//    return len;
//}

//int _read(int file, char *ptr, int len)
//{
//    int count = 0;
//    char ch;
//
//    while(count < len)
//    {
//        ch = UART1_Read();
//
//        if(ch == '\r')
//        {
//            UART1_Write('\r');
//            UART1_Write('\n');
//
//            ptr[count++] = '\n';
//            break;
//        }
//
//        UART1_Write(ch);
//
//        ptr[count++] = ch;
//    }
//
//    return count;
//}

