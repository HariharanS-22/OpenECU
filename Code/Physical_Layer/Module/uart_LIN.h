/*
 * uart_LIN.h
 *
 *  Created on: 31-Jul-2026
 *      Author: Hariharan
 */

#ifndef UART_LIN_H_
#define UART_LIN_H_

#include "stm32f446xx.h"
#include <stdint.h>
#include <stdio.h>

#define GPIOA_EN	(1U << 0)
#define UART1_EN 	(1U << 4)

#define PA9_AF		(2U << 18)
#define PA10_AF		(2U << 20)
#define AF7			(0x7)

#define CR1_TE		(1U << 3)
#define CR1_RE		(1U << 2)
#define CR1_UE		(1U << 13)

#define SR_TXE 		(1U << 7)
#define SR_TC		(1U << 6)
#define SR_RXNE     (1U << 5)

#define SYS_FREQ 	(16000000U)			//16 MHz - Default CLK
#define APB2_CLK 	SYS_FREQ

#define UART_BAUDRATE  (9600U)

//LIN
#define SR_LBD		(1U << 8)
#define CR1_SBK		(1U << 0)
#define CR2_LINEN   (1U << 14)
#define CR2_LBDL	(1U << 5)
#define CR2_LBDIE	(1U << 6)

//typedef struct{
//    uint8_t ID;
//    uint8_t PID;
//    uint8_t DLC;
//    uint8_t Data[8];
//    uint8_t Checksum;
//}LIN_Frame;

void UART1_Init(void);
void UART1_Write(int ch);
uint8_t UART1_Read(void);

void LIN_Init(void);
uint8_t LIN_Receive(void);
void LIN_Transmit(uint8_t ID, uint8_t* data, uint8_t size);
uint8_t LIN_PIDCal(uint8_t ID);
uint8_t LIN_ChecksumCal(uint8_t PID, uint8_t* data, uint8_t size);


#endif /* UART_LIN_H_ */
