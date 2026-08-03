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

    DWT->CTRL |= (1U << 0);
    DWT->CYCCNT = 0;

}

void CommStats_StartTimer(CommStats_t *stats)
{
    stats->StartTick=DWT->CYCCNT;
}

void CommStats_StopTimer(CommStats_t *stats)
{
    stats->EndTick=DWT->CYCCNT;

    stats->CurrentLatency = (stats->EndTick - stats->StartTick);

    stats->TotalLatency += stats->CurrentLatency;

    if(stats->CurrentLatency > stats->MaxLatency)

        stats->MaxLatency = stats->CurrentLatency;

    if(stats->CurrentLatency < stats->MinLatency)

        stats->MinLatency = stats->CurrentLatency;

    if(stats->TxPackets)
        stats->AverageLatency = stats->TotalLatency/stats->TxPackets;
}

void CommStats_Print(CommStats_t *stats,char *name)
{
	printf("============================\n");
	printf("%s STATISTICS\n",name);

    printf("Tx Packets      : %lu\n",stats->TxPackets);
    printf("Rx Packets      : %lu\n",stats->RxPackets);

    printf("Tx Bytes        : %lu\n",stats->TxBytes);
    printf("Rx Bytes        : %lu\n",stats->RxBytes);

    printf("Tx Errors       : %lu\n",stats->TransmissionError + stats->ArbitrationLost);

    printf("ArbitrationLost : %lu\n",stats->ArbitrationLost);

    printf("TransmissionOk   : %lu\n",stats->TransmissionOk);

    printf("TransmissonError : %lu\n",stats->TransmissionError);

    printf("Avg Latency : %lu\n",stats->AverageLatency);

    printf("Min Latency : %lu\n",stats->MinLatency);

    printf("Max Latency : %lu\n",stats->MaxLatency);

    printf("============================\n");
}
