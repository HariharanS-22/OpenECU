/*
 * uart.h
 *
 *  Created on: Mar 9, 2026
 *      Author: Hariharan
 */

#ifndef UART_H_
#define UART_H_

#include "stm32f4xx.h"
#include <stdint.h>
#include <stdio.h>

void UART2_RxTxInit(void);
char UART2_Read(void);
void UART2_Write(int ch);
void customPrint(char *buf, int len);


#endif /* UART_H_ */
