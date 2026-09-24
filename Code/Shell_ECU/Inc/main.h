/*
 * main.h
 *
 *  Created on: 23-Sept-2026
 *      Author: Hariharan
 */

#ifndef MAIN_H_
#define MAIN_H_

#include "stm32f1xx.h"

#if !defined(__SOFT_FP__) && defined(__ARM_FP)
  #warning "FPU is not initialized, but the project is compiling for an FPU. Please initialize the FPU before use."
#endif

#endif /* MAIN_H_ */
