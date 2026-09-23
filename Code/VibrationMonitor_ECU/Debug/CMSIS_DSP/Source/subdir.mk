################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../CMSIS_DSP/Source/arm_bitreversal.c \
../CMSIS_DSP/Source/arm_bitreversal2.c \
../CMSIS_DSP/Source/arm_cfft_f32.c \
../CMSIS_DSP/Source/arm_cfft_init_f32.c \
../CMSIS_DSP/Source/arm_cfft_radix2_f32.c \
../CMSIS_DSP/Source/arm_cfft_radix2_init_f32.c \
../CMSIS_DSP/Source/arm_cfft_radix4_f32.c \
../CMSIS_DSP/Source/arm_cfft_radix4_init_f32.c \
../CMSIS_DSP/Source/arm_cfft_radix8_f32.c \
../CMSIS_DSP/Source/arm_common_tables.c \
../CMSIS_DSP/Source/arm_const_structs.c \
../CMSIS_DSP/Source/arm_mfcc_f32.c \
../CMSIS_DSP/Source/arm_mfcc_init_f32.c \
../CMSIS_DSP/Source/arm_rfft_fast_f32.c \
../CMSIS_DSP/Source/arm_rfft_fast_init_f32.c 

OBJS += \
./CMSIS_DSP/Source/arm_bitreversal.o \
./CMSIS_DSP/Source/arm_bitreversal2.o \
./CMSIS_DSP/Source/arm_cfft_f32.o \
./CMSIS_DSP/Source/arm_cfft_init_f32.o \
./CMSIS_DSP/Source/arm_cfft_radix2_f32.o \
./CMSIS_DSP/Source/arm_cfft_radix2_init_f32.o \
./CMSIS_DSP/Source/arm_cfft_radix4_f32.o \
./CMSIS_DSP/Source/arm_cfft_radix4_init_f32.o \
./CMSIS_DSP/Source/arm_cfft_radix8_f32.o \
./CMSIS_DSP/Source/arm_common_tables.o \
./CMSIS_DSP/Source/arm_const_structs.o \
./CMSIS_DSP/Source/arm_mfcc_f32.o \
./CMSIS_DSP/Source/arm_mfcc_init_f32.o \
./CMSIS_DSP/Source/arm_rfft_fast_f32.o \
./CMSIS_DSP/Source/arm_rfft_fast_init_f32.o 

C_DEPS += \
./CMSIS_DSP/Source/arm_bitreversal.d \
./CMSIS_DSP/Source/arm_bitreversal2.d \
./CMSIS_DSP/Source/arm_cfft_f32.d \
./CMSIS_DSP/Source/arm_cfft_init_f32.d \
./CMSIS_DSP/Source/arm_cfft_radix2_f32.d \
./CMSIS_DSP/Source/arm_cfft_radix2_init_f32.d \
./CMSIS_DSP/Source/arm_cfft_radix4_f32.d \
./CMSIS_DSP/Source/arm_cfft_radix4_init_f32.d \
./CMSIS_DSP/Source/arm_cfft_radix8_f32.d \
./CMSIS_DSP/Source/arm_common_tables.d \
./CMSIS_DSP/Source/arm_const_structs.d \
./CMSIS_DSP/Source/arm_mfcc_f32.d \
./CMSIS_DSP/Source/arm_mfcc_init_f32.d \
./CMSIS_DSP/Source/arm_rfft_fast_f32.d \
./CMSIS_DSP/Source/arm_rfft_fast_init_f32.d 


# Each subdirectory must supply rules for building sources it contributes
CMSIS_DSP/Source/%.o CMSIS_DSP/Source/%.su CMSIS_DSP/Source/%.cyclo: ../CMSIS_DSP/Source/%.c CMSIS_DSP/Source/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F446xx -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/Jagakishan/Mini-AUTOSAR/OpenECU/Code/VibrationMonitor_ECU/ThirdParty/FreeRTOS" -I"C:/Users/Jagakishan/Mini-AUTOSAR/OpenECU/Code/VibrationMonitor_ECU/ThirdParty/FreeRTOS/include" -I"C:/Users/Jagakishan/Mini-AUTOSAR/OpenECU/Code/VibrationMonitor_ECU/ThirdParty/FreeRTOS/portable/GCC/ARM_CM4F" -I"C:/Users/Jagakishan/Mini-AUTOSAR/OpenECU/Code/VibrationMonitor_ECU/ThirdParty/SEGGER/OS" -I"C:/Users/Jagakishan/Mini-AUTOSAR/OpenECU/Code/VibrationMonitor_ECU/ThirdParty/SEGGER/SEGGER" -I"C:/Users/Jagakishan/Mini-AUTOSAR/OpenECU/Code/VibrationMonitor_ECU/ThirdParty/SEGGER/Config" -I"C:/Users/Jagakishan/Mini-AUTOSAR/OpenECU/Code/VibrationMonitor_ECU/ThirdParty/SEGGER" -I"C:/Users/Jagakishan/Mini-AUTOSAR/OpenECU/Code/VibrationMonitor_ECU/Module" -I"C:/Users/Jagakishan/Mini-AUTOSAR/OpenECU/Code/VibrationMonitor_ECU/CMSIS_DSP/Include" -I"C:/Users/Jagakishan/Mini-AUTOSAR/OpenECU/Code/VibrationMonitor_ECU/CMSIS_DSP/PrivateInclude" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-CMSIS_DSP-2f-Source

clean-CMSIS_DSP-2f-Source:
	-$(RM) ./CMSIS_DSP/Source/arm_bitreversal.cyclo ./CMSIS_DSP/Source/arm_bitreversal.d ./CMSIS_DSP/Source/arm_bitreversal.o ./CMSIS_DSP/Source/arm_bitreversal.su ./CMSIS_DSP/Source/arm_bitreversal2.cyclo ./CMSIS_DSP/Source/arm_bitreversal2.d ./CMSIS_DSP/Source/arm_bitreversal2.o ./CMSIS_DSP/Source/arm_bitreversal2.su ./CMSIS_DSP/Source/arm_cfft_f32.cyclo ./CMSIS_DSP/Source/arm_cfft_f32.d ./CMSIS_DSP/Source/arm_cfft_f32.o ./CMSIS_DSP/Source/arm_cfft_f32.su ./CMSIS_DSP/Source/arm_cfft_init_f32.cyclo ./CMSIS_DSP/Source/arm_cfft_init_f32.d ./CMSIS_DSP/Source/arm_cfft_init_f32.o ./CMSIS_DSP/Source/arm_cfft_init_f32.su ./CMSIS_DSP/Source/arm_cfft_radix2_f32.cyclo ./CMSIS_DSP/Source/arm_cfft_radix2_f32.d ./CMSIS_DSP/Source/arm_cfft_radix2_f32.o ./CMSIS_DSP/Source/arm_cfft_radix2_f32.su ./CMSIS_DSP/Source/arm_cfft_radix2_init_f32.cyclo ./CMSIS_DSP/Source/arm_cfft_radix2_init_f32.d ./CMSIS_DSP/Source/arm_cfft_radix2_init_f32.o ./CMSIS_DSP/Source/arm_cfft_radix2_init_f32.su ./CMSIS_DSP/Source/arm_cfft_radix4_f32.cyclo ./CMSIS_DSP/Source/arm_cfft_radix4_f32.d ./CMSIS_DSP/Source/arm_cfft_radix4_f32.o ./CMSIS_DSP/Source/arm_cfft_radix4_f32.su ./CMSIS_DSP/Source/arm_cfft_radix4_init_f32.cyclo ./CMSIS_DSP/Source/arm_cfft_radix4_init_f32.d ./CMSIS_DSP/Source/arm_cfft_radix4_init_f32.o ./CMSIS_DSP/Source/arm_cfft_radix4_init_f32.su ./CMSIS_DSP/Source/arm_cfft_radix8_f32.cyclo ./CMSIS_DSP/Source/arm_cfft_radix8_f32.d ./CMSIS_DSP/Source/arm_cfft_radix8_f32.o ./CMSIS_DSP/Source/arm_cfft_radix8_f32.su ./CMSIS_DSP/Source/arm_common_tables.cyclo ./CMSIS_DSP/Source/arm_common_tables.d ./CMSIS_DSP/Source/arm_common_tables.o ./CMSIS_DSP/Source/arm_common_tables.su ./CMSIS_DSP/Source/arm_const_structs.cyclo ./CMSIS_DSP/Source/arm_const_structs.d ./CMSIS_DSP/Source/arm_const_structs.o ./CMSIS_DSP/Source/arm_const_structs.su ./CMSIS_DSP/Source/arm_mfcc_f32.cyclo ./CMSIS_DSP/Source/arm_mfcc_f32.d ./CMSIS_DSP/Source/arm_mfcc_f32.o ./CMSIS_DSP/Source/arm_mfcc_f32.su ./CMSIS_DSP/Source/arm_mfcc_init_f32.cyclo ./CMSIS_DSP/Source/arm_mfcc_init_f32.d ./CMSIS_DSP/Source/arm_mfcc_init_f32.o ./CMSIS_DSP/Source/arm_mfcc_init_f32.su ./CMSIS_DSP/Source/arm_rfft_fast_f32.cyclo ./CMSIS_DSP/Source/arm_rfft_fast_f32.d ./CMSIS_DSP/Source/arm_rfft_fast_f32.o ./CMSIS_DSP/Source/arm_rfft_fast_f32.su ./CMSIS_DSP/Source/arm_rfft_fast_init_f32.cyclo ./CMSIS_DSP/Source/arm_rfft_fast_init_f32.d ./CMSIS_DSP/Source/arm_rfft_fast_init_f32.o ./CMSIS_DSP/Source/arm_rfft_fast_init_f32.su

.PHONY: clean-CMSIS_DSP-2f-Source

