################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (14.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../CMSIS-DSP-1.17.1/Testing/cmsis_build/RTE/Device/ARMCM4_FP/startup_ARMCM4.c \
../CMSIS-DSP-1.17.1/Testing/cmsis_build/RTE/Device/ARMCM4_FP/system_ARMCM4.c 

OBJS += \
./CMSIS-DSP-1.17.1/Testing/cmsis_build/RTE/Device/ARMCM4_FP/startup_ARMCM4.o \
./CMSIS-DSP-1.17.1/Testing/cmsis_build/RTE/Device/ARMCM4_FP/system_ARMCM4.o 

C_DEPS += \
./CMSIS-DSP-1.17.1/Testing/cmsis_build/RTE/Device/ARMCM4_FP/startup_ARMCM4.d \
./CMSIS-DSP-1.17.1/Testing/cmsis_build/RTE/Device/ARMCM4_FP/system_ARMCM4.d 


# Each subdirectory must supply rules for building sources it contributes
CMSIS-DSP-1.17.1/Testing/cmsis_build/RTE/Device/ARMCM4_FP/%.o CMSIS-DSP-1.17.1/Testing/cmsis_build/RTE/Device/ARMCM4_FP/%.su CMSIS-DSP-1.17.1/Testing/cmsis_build/RTE/Device/ARMCM4_FP/%.cyclo: ../CMSIS-DSP-1.17.1/Testing/cmsis_build/RTE/Device/ARMCM4_FP/%.c CMSIS-DSP-1.17.1/Testing/cmsis_build/RTE/Device/ARMCM4_FP/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32 -DSTM32F4 -DSTM32F446RETx -c -I../Inc -I"H:/OpenECU/Code/Test/Module" -I"H:/OpenECU/Code/Test/CMSIS" -I"H:/OpenECU/Code/Test/CMSIS/Device/ST/STM32F4xx/Include" -I"H:/OpenECU/Code/Test/CMSIS/Include" -I"H:/OpenECU/Code/Test/CMSIS-DSP-1.17.1/Include" -I"H:/OpenECU/Code/Test/CMSIS-DSP-1.17.1/Include/dsp" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-CMSIS-2d-DSP-2d-1-2e-17-2e-1-2f-Testing-2f-cmsis_build-2f-RTE-2f-Device-2f-ARMCM4_FP

clean-CMSIS-2d-DSP-2d-1-2e-17-2e-1-2f-Testing-2f-cmsis_build-2f-RTE-2f-Device-2f-ARMCM4_FP:
	-$(RM) ./CMSIS-DSP-1.17.1/Testing/cmsis_build/RTE/Device/ARMCM4_FP/startup_ARMCM4.cyclo ./CMSIS-DSP-1.17.1/Testing/cmsis_build/RTE/Device/ARMCM4_FP/startup_ARMCM4.d ./CMSIS-DSP-1.17.1/Testing/cmsis_build/RTE/Device/ARMCM4_FP/startup_ARMCM4.o ./CMSIS-DSP-1.17.1/Testing/cmsis_build/RTE/Device/ARMCM4_FP/startup_ARMCM4.su ./CMSIS-DSP-1.17.1/Testing/cmsis_build/RTE/Device/ARMCM4_FP/system_ARMCM4.cyclo ./CMSIS-DSP-1.17.1/Testing/cmsis_build/RTE/Device/ARMCM4_FP/system_ARMCM4.d ./CMSIS-DSP-1.17.1/Testing/cmsis_build/RTE/Device/ARMCM4_FP/system_ARMCM4.o ./CMSIS-DSP-1.17.1/Testing/cmsis_build/RTE/Device/ARMCM4_FP/system_ARMCM4.su

.PHONY: clean-CMSIS-2d-DSP-2d-1-2e-17-2e-1-2f-Testing-2f-cmsis_build-2f-RTE-2f-Device-2f-ARMCM4_FP

