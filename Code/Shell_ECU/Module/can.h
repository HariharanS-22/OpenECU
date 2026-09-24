/*
 *
 * can.h
 *
 *  Created on: Jul 18, 2026
 *      Author: Hariharan
 */

#ifndef CAN_H_
#define CAN_H_

#include "stm32f1xx.h"

#define ECU1_Coolant 			(0x01)		//11bit
#define ECU2_VibMon  			(0x02)
#define ECU3_Shell				(0x03)

#define RCC_CAN1EN		(1U << 25)
#define RCC_GPIOAEN		(1U << 2)
#define RCC_AFIOEN		(1U << 0)

#define MCR_INRQ		(1U << 0)
#define MCR_SLEEP		(1U << 1)

#define MSR_INAK		(1U << 0)
#define MSR_SLAK		(1U << 1)

#define IER_FMPIE0		(1U << 1)
#define IER_FMPIE1		(1U << 4)
#define IER_ERRIE		(1U << 15)

#define RF0R_RFOM0		(1U << 5)
#define RF1R_RFOM1		(1U << 5)

/*
 * APB1 = 36 MHz
 * CAN = 500 kbps
 *
 * Prescaler = 4
 * TQ = 18
 *
 * 1 + 13 + 4 = 18 TQ
 *
 * BRP  = 3  -> actual prescaler = 4
 * TS1  = 12 -> actual = 13
 * TS2  = 3  -> actual = 4
 */

#define CAN1_BTR    (0x00140001U)

#define BTR_LBKM		(1U << 30)

#define FMR_FINIT		(1U << 0)
#define FMR_CANSB        (14U << 8)	//14 CAN1

#define TSR_TME0		(1U << 26)

//PA11 - CAN_RX MODE = 00 - Input  CNF = 01 - Floating input
#define PA11_CAN_RX       (0x4U << 12)
//PA12 - CAN_TX MODE = 11 - Output 50Hz  CNF = 10 - AF
#define PA12_CAN_TX       (0xBU << 16)

void CAN1_Init(void);
void CAN1_TxMsg(uint8_t *msg, uint8_t DLC);
void CAN1_LoopBack(void);

void CAN1_RX0_IRQHandler(void);

#endif /* CAN_H_ */
