/*
 *
 * can.h
 *
 *  Created on: Jul 18, 2026
 *      Author: Hariharan
 */

#ifndef CAN_H_
#define CAN_H_

#include "main.h"
#include "stm32f446xx.h"

#define ECU1_CAN_ID 			(0x01)		//11bit
#define ECU2_CAN_ID  			(0x02)

#define PA11_AF			(10U << 22)
#define PA12_AF			(10U << 24)
#define AF9 			(0x9)

#define RCC_CAN1EN		(1U << 25)
#define RCC_GPIOAEN		(1U << 0)

#define MCR_INRQ		(1U << 0)
#define MCR_SLEEP		(1U << 1)

#define MSR_INAK		(1U << 0)
#define MSR_SLAK		(1U << 1)

#define IER_FMPIE0		(1U << 1)
#define IER_FMPIE1		(1U << 4)
#define IER_ERRIE		(1U << 15)

#define RF0R_RFOM0		(1U << 5)
#define RF1R_RFOM1		(1U << 5)

#define CAN1_BTR		(0x012B0001)		//TS2-2 TS1-13 BRD-1
#define BTR_LBKM		(1U << 30)

#define FMR_FINIT		(1U << 0)
#define FMR_CANSB		(011011U << 8)	//28 CAN1

#define TSR_TME0		(1U << 26)

void CAN1_Init(void);
void CAN1_TxMsg(uint8_t *msg, uint8_t DLC);
void CAN1_LoopBack(void);

void CAN1_RX0_IRQHandler(void);


#endif /* CAN_H_ */
