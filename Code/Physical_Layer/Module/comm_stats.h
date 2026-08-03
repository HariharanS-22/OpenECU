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

    /* Error Statistics */
    uint32_t TxErrors;
    uint32_t RxErrors;

    uint32_t TimeoutErrors;

    uint32_t ChecksumErrors;

    uint32_t PIDErrors;

    uint32_t CRCErrors;

    uint32_t ACKErrors;

    uint32_t ArbitrationLost;

    uint32_t FrameErrors;

    uint32_t ParityErrors;

    /* Timing */
    uint32_t StartTick;

    uint32_t EndTick;

    uint32_t CurrentLatency;

    uint32_t TotalLatency;

    uint32_t AverageLatency;

    uint32_t MaxLatency;

    uint32_t MinLatency;

}CommStats_t;

void CommStats_Init(void);

void CommStats_StartTimer(CommStats_t *stats);
void CommStats_StopTimer(CommStats_t *stats);
void CommStats_Print(CommStats_t *stats,char *name);

#endif /* COMM_STATS_H_ */
