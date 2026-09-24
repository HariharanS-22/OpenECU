/*
 * can.c
 *
 *  Created on: Jul 18, 2026
 *      Author: Hariharan
 */

#include "can.h"
#include "uart.h"
#include "sysTick.h"

extern uint16_t receivedID;
extern uint8_t receivedDLC;
extern uint16_t receivedTimeStamp;
extern uint64_t receivedMsg;
extern uint8_t flag_msgReceived;

void CAN1_Init(void)
{

    /* Enable CAN1 clock */
    RCC->APB1ENR |= RCC_CAN1EN;

    /* Enable GPIOA clock */
    RCC->APB2ENR |= RCC_GPIOAEN;

    /* Enable AFIO clock */
    RCC->APB2ENR |= RCC_AFIOEN;

    /* PA11 = CAN_RX   PA12 = CAN_TX */
    GPIOA->CRH &= ~((0xFU << 12) | (0xFU << 16));
    GPIOA->CRH |= PA11_CAN_RX | PA12_CAN_TX;

    /* Enter CAN initialization mode */
    CAN1->MCR |= MCR_INRQ;

    while (!(CAN1->MSR & MSR_INAK)){  }

    /* Leave sleep mode */
    CAN1->MCR &= ~MCR_SLEEP;

    while (CAN1->MSR & MSR_SLAK) { }

    CAN1->BTR = CAN1_BTR;

	CAN1->FA1R &= ~(1U << 0);			//Disable Filter

	//Filter1 enable - FF0
	CAN1->FM1R |= (1U << 0);			// List mode
	CAN1->FS1R &= ~(1U << 0);           // 16-bit

	//Filter0 assigned to FIFO0
	CAN1->FFA1R &= ~(1U << 0);

	CAN1->sFilterRegister[0].FR1 = (ECU1_Coolant << 5) << 16 | (ECU2_VibMon << 5);

	//Filter activation - FF0
	CAN1->FA1R |= (1U << 0);			//Enable Filter

	//Clear to exit FilterInitialization
	CAN1->FMR &= ~FMR_FINIT;

    /* Enable FIFO0 message pending interrupt */
    CAN1->IER |= IER_FMPIE0;

    /* Enable error interrupt */
    CAN1->IER |= IER_ERRIE;

    NVIC_EnableIRQ(CAN1_RX0_IRQn);

    /* Leave CAN initialization mode */
    CAN1->MCR &= ~MCR_INRQ;

    while (CAN1->MSR & MSR_INAK){ }

    __enable_irq();
}

void CAN1_TxMsg(uint8_t* tx_msg, uint8_t DLC){
	uint64_t msg = {0} ;
	uint16_t timeStamp = (uint16_t) sysTick;

	for(int i=0 ; i<DLC ; i++){
		msg |= (uint64_t) (tx_msg[i]) << (i*8);
	}

	while(!(CAN1->TSR & TSR_TME0)) {}

	CAN1->sTxMailBox->TIR 	= (ECU3_Shell  << 21);		//RTR - bit 1 | IDE - bit 2
	CAN1->sTxMailBox->TIR 	&= ~(1U << 2);
	CAN1->sTxMailBox->TIR 	&= ~(1U << 1);

	CAN1->sTxMailBox->TDTR 	= (timeStamp << 16) | (DLC << 0);
	CAN1->sTxMailBox->TDLR  = (uint32_t) msg;
	CAN1->sTxMailBox->TDHR  = (uint32_t) (msg >> 32 );

	CAN1->sTxMailBox->TIR  |= (1U << 0);		// TXRQ - bit 1

}

void CAN1_LoopBack(){
	//Software Initialization : Set INRQ to initialize
	CAN1->MCR |= MCR_INRQ;
	//Hardware Initialization : Wait for INAK is set
	while(!(CAN1->MSR & MSR_INAK)) {}

	//Set to enter FilterInitialization
	CAN1->FMR |= FMR_FINIT;

	//Loopback Enable
	CAN1->BTR |= BTR_LBKM;
	CAN1->sFilterRegister[0].FR1 |= (ECU3_Shell  << 5) << 16 ;

	//Clear to exit FilterInitialization
	CAN1->FMR &= ~FMR_FINIT;

	CAN1->MCR &= ~MCR_INRQ;
	//while((CAN1->MSR & MSR_INAK)) {}
}

void USB_LP_CAN_RX0_IRQHandler(void)
{
    uint32_t low;
    uint32_t high;

    low  = CAN1->sFIFOMailBox[0].RDLR;
    high = CAN1->sFIFOMailBox[0].RDHR;

    receivedID = (uint16_t)((CAN1->sFIFOMailBox[0].RIR >> 21) & 0x7FFU);
    receivedDLC = (uint8_t)(CAN1->sFIFOMailBox[0].RDTR & 0x0FU);
    receivedTimeStamp = (uint16_t)((CAN1->sFIFOMailBox[0].RDTR >> 16) & 0xFFFFU);
    receivedMsg = ((uint64_t)high << 32) | (uint64_t)low;

    flag_msgReceived = 1;

    /* Release FIFO0 mailbox */
    CAN1->RF0R |= RF0R_RFOM0;
}

//void CAN1_RX1_IRQHandler(void){
//
//	flag_msgReceived = 1;
//
//	receivedID = (uint16_t)((CAN1->sFIFOMailBox[1].RIR & 0xFFE00000)>>21);
//	receivedDLC = (uint8_t)(CAN1->sFIFOMailBox[1].RDTR & 0xF);
//	receivedTimeStamp = (uint16_t)((CAN1->sFIFOMailBox[1].RDTR & 0xFFFF0000)>>16);
//	receivedMsg = (((uint64_t)CAN1->sFIFOMailBox[1].RDHR << 32) | (uint64_t)CAN1->sFIFOMailBox[1].RDLR );
//
//	CAN1->RF1R |= RF1R_RFOM1;
//}

