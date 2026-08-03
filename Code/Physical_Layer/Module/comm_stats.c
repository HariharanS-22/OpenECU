/*
 * comm_stats.c
 *
 *  Created on: 03-Aug-2026
 *      Author: Hariharan
 */


#include "comm_stats.h"
#include "sysTick.h"
#include <stdio.h>

extern CommStats_t LIN_Stats;
extern CommStats_t CAN_Stats;

void CommStats_Init(void)
{
    LIN_Stats.MinLatency=0xFFFFFFFF;
    CAN_Stats.MinLatency=0xFFFFFFFF;
}

void CommStats_StartTimer(CommStats_t *stats)
{
    stats->StartTick=sysTick;
}

void CommStats_StopTimer(CommStats_t *stats)
{
    stats->EndTick=sysTick;

    stats->CurrentLatency = stats->EndTick - stats->StartTick;

    stats->TotalLatency += stats->CurrentLatency;

    if(stats->CurrentLatency > stats->MaxLatency)

        stats->MaxLatency = stats->CurrentLatency;

    if(stats->CurrentLatency < stats->MinLatency)

        stats->MinLatency = stats->CurrentLatency;

    if(stats->RxPackets)
        stats->AverageLatency = stats->TotalLatency/stats->RxPackets;
}

void CommStats_Print(CommStats_t *stats,char *name)
{
	printf("============================\n");
	printf("%s STATISTICS\n",name);

    printf("Tx Packets      : %lu\n",stats->TxPackets);
    printf("Rx Packets      : %lu\n",stats->RxPackets);

    printf("Tx Bytes        : %lu\n",stats->TxBytes);
    printf("Rx Bytes        : %lu\n",stats->RxBytes);

    printf("Tx Errors       : %lu\n",stats->TxErrors);
    printf("Rx Errors       : %lu\n",stats->RxErrors);

    printf("Checksum Errors : %lu\n",stats->ChecksumErrors);

    printf("PID Errors      : %lu\n",stats->PIDErrors);

    printf("Timeout Errors  : %lu\n",stats->TimeoutErrors);

    printf("CRC Errors      : %lu\n",stats->CRCErrors);

    printf("ACK Errors      : %lu\n",stats->ACKErrors);

    printf("ArbitrationLost : %lu\n",stats->ArbitrationLost);

    printf("Frame Errors    : %lu\n",stats->FrameErrors);

    printf("Parity Errors   : %lu\n",stats->ParityErrors);

    printf("Avg Latency(ms) : %lu\n",stats->AverageLatency);

    printf("Min Latency(ms) : %lu\n",stats->MinLatency);

    printf("Max Latency(ms) : %lu\n",stats->MaxLatency);

    printf("============================\n");
}
