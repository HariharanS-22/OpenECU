/*
 * comm_stats.h
 *
 *  Created on: 03-Aug-2026
 *      Author: Hariharan
 */

#ifndef COMM_STATS_H_
#define COMM_STATS_H_

#include <stdint.h>

typedef struct
{
    /* Packet Statistics */
    uint32_t TxPackets;
    uint32_t RxPackets;

    uint32_t TxBytes;
    uint32_t RxBytes;

    uint32_t TransmissionError;
    uint32_t TransmissionOk;
    uint32_t ArbitrationLost;

    /* Timing */
    uint64_t StartTick;

    uint64_t EndTick;

    uint32_t CurrentLatency;

    uint32_t TotalLatency;

    uint32_t AverageLatency;

    uint32_t MaxLatency;

    uint32_t MinLatency;

}CommStats_t;

#define DWT_CTRL (*(volatile uint32_t *)(0xE0001000))

void CommStats_Init(void);

void CommStats_StartTimer(CommStats_t *stats);
void CommStats_StopTimer(CommStats_t *stats);
void CommStats_Print(CommStats_t *stats,char *name);

#endif /* COMM_STATS_H_ */
