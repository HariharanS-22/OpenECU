################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (14.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../CMSIS_DSP/arm_cfft_f32.c \
../CMSIS_DSP/arm_cfft_init_f32.c \
../CMSIS_DSP/arm_common_tables.c \
../CMSIS_DSP/arm_const_structs.c \
../CMSIS_DSP/arm_rfft_fast_f32.c \
../CMSIS_DSP/arm_rfft_fast_init_f32.c 

OBJS += \
./CMSIS_DSP/arm_cfft_f32.o \
./CMSIS_DSP/arm_cfft_init_f32.o \
./CMSIS_DSP/arm_common_tables.o \
./CMSIS_DSP/arm_const_structs.o \
./CMSIS_DSP/arm_rfft_fast_f32.o \
./CMSIS_DSP/arm_rfft_fast_init_f32.o 

C_DEPS += \
./CMSIS_DSP/arm_cfft_f32.d \
./CMSIS_DSP/arm_cfft_init_f32.d \
./CMSIS_DSP/arm_common_tables.d \
./CMSIS_DSP/arm_const_structs.d \
./CMSIS_DSP/arm_rfft_fast_f32.d \
./CMSIS_DSP/arm_rfft_fast_init_f32.d 


# Each subdirectory must supply rules for building sources it contributes
CMSIS_DSP/%.o CMSIS_DSP/%.su CMSIS_DSP/%.cyclo: ../CMSIS_DSP/%.c CMSIS_DSP/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32 -DSTM32F4 -DSTM32F446RETx -c -I../Inc -I"H:/OpenECU/Code/Test/Module" -I"H:/OpenECU/Code/Test/CMSIS" -I"H:/OpenECU/Code/Test/CMSIS/Device/ST/STM32F4xx/Include" -I"H:/OpenECU/Code/Test/CMSIS/Include" -I"H:/OpenECU/Code/Test/CMSIS-DSP-1.17.1/Include" -I"H:/OpenECU/Code/Test/CMSIS-DSP-1.17.1/Include/dsp" -I"H:/OpenECU/Code/Test/CMSIS-DSP-1.17.1/dsppp" -I"H:/OpenECU/Code/Test/CMSIS-DSP-1.17.1/PrivateInclude" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-CMSIS_DSP

clean-CMSIS_DSP:
	-$(RM) ./CMSIS_DSP/arm_cfft_f32.cyclo ./CMSIS_DSP/arm_cfft_f32.d ./CMSIS_DSP/arm_cfft_f32.o ./CMSIS_DSP/arm_cfft_f32.su ./CMSIS_DSP/arm_cfft_init_f32.cyclo ./CMSIS_DSP/arm_cfft_init_f32.d ./CMSIS_DSP/arm_cfft_init_f32.o ./CMSIS_DSP/arm_cfft_init_f32.su ./CMSIS_DSP/arm_common_tables.cyclo ./CMSIS_DSP/arm_common_tables.d ./CMSIS_DSP/arm_common_tables.o ./CMSIS_DSP/arm_common_tables.su ./CMSIS_DSP/arm_const_structs.cyclo ./CMSIS_DSP/arm_const_structs.d ./CMSIS_DSP/arm_const_structs.o ./CMSIS_DSP/arm_const_structs.su ./CMSIS_DSP/arm_rfft_fast_f32.cyclo ./CMSIS_DSP/arm_rfft_fast_f32.d ./CMSIS_DSP/arm_rfft_fast_f32.o ./CMSIS_DSP/arm_rfft_fast_f32.su ./CMSIS_DSP/arm_rfft_fast_init_f32.cyclo ./CMSIS_DSP/arm_rfft_fast_init_f32.d ./CMSIS_DSP/arm_rfft_fast_init_f32.o ./CMSIS_DSP/arm_rfft_fast_init_f32.su

.PHONY: clean-CMSIS_DSP

