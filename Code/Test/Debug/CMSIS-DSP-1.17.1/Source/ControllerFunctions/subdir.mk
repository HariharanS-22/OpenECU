################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (14.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../CMSIS-DSP-1.17.1/Source/ControllerFunctions/ControllerFunctions.c \
../CMSIS-DSP-1.17.1/Source/ControllerFunctions/arm_pid_init_f32.c \
../CMSIS-DSP-1.17.1/Source/ControllerFunctions/arm_pid_init_q15.c \
../CMSIS-DSP-1.17.1/Source/ControllerFunctions/arm_pid_init_q31.c \
../CMSIS-DSP-1.17.1/Source/ControllerFunctions/arm_pid_reset_f32.c \
../CMSIS-DSP-1.17.1/Source/ControllerFunctions/arm_pid_reset_q15.c \
../CMSIS-DSP-1.17.1/Source/ControllerFunctions/arm_pid_reset_q31.c \
../CMSIS-DSP-1.17.1/Source/ControllerFunctions/arm_sin_cos_f32.c \
../CMSIS-DSP-1.17.1/Source/ControllerFunctions/arm_sin_cos_q31.c 

OBJS += \
./CMSIS-DSP-1.17.1/Source/ControllerFunctions/ControllerFunctions.o \
./CMSIS-DSP-1.17.1/Source/ControllerFunctions/arm_pid_init_f32.o \
./CMSIS-DSP-1.17.1/Source/ControllerFunctions/arm_pid_init_q15.o \
./CMSIS-DSP-1.17.1/Source/ControllerFunctions/arm_pid_init_q31.o \
./CMSIS-DSP-1.17.1/Source/ControllerFunctions/arm_pid_reset_f32.o \
./CMSIS-DSP-1.17.1/Source/ControllerFunctions/arm_pid_reset_q15.o \
./CMSIS-DSP-1.17.1/Source/ControllerFunctions/arm_pid_reset_q31.o \
./CMSIS-DSP-1.17.1/Source/ControllerFunctions/arm_sin_cos_f32.o \
./CMSIS-DSP-1.17.1/Source/ControllerFunctions/arm_sin_cos_q31.o 

C_DEPS += \
./CMSIS-DSP-1.17.1/Source/ControllerFunctions/ControllerFunctions.d \
./CMSIS-DSP-1.17.1/Source/ControllerFunctions/arm_pid_init_f32.d \
./CMSIS-DSP-1.17.1/Source/ControllerFunctions/arm_pid_init_q15.d \
./CMSIS-DSP-1.17.1/Source/ControllerFunctions/arm_pid_init_q31.d \
./CMSIS-DSP-1.17.1/Source/ControllerFunctions/arm_pid_reset_f32.d \
./CMSIS-DSP-1.17.1/Source/ControllerFunctions/arm_pid_reset_q15.d \
./CMSIS-DSP-1.17.1/Source/ControllerFunctions/arm_pid_reset_q31.d \
./CMSIS-DSP-1.17.1/Source/ControllerFunctions/arm_sin_cos_f32.d \
./CMSIS-DSP-1.17.1/Source/ControllerFunctions/arm_sin_cos_q31.d 


# Each subdirectory must supply rules for building sources it contributes
CMSIS-DSP-1.17.1/Source/ControllerFunctions/%.o CMSIS-DSP-1.17.1/Source/ControllerFunctions/%.su CMSIS-DSP-1.17.1/Source/ControllerFunctions/%.cyclo: ../CMSIS-DSP-1.17.1/Source/ControllerFunctions/%.c CMSIS-DSP-1.17.1/Source/ControllerFunctions/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32 -DSTM32F4 -DSTM32F446RETx -c -I../Inc -I"H:/OpenECU/Code/Test/Module" -I"H:/OpenECU/Code/Test/CMSIS" -I"H:/OpenECU/Code/Test/CMSIS/Device/ST/STM32F4xx/Include" -I"H:/OpenECU/Code/Test/CMSIS/Include" -I"H:/OpenECU/Code/Test/CMSIS-DSP-1.17.1/Include" -I"H:/OpenECU/Code/Test/CMSIS-DSP-1.17.1/Include/dsp" -I"H:/OpenECU/Code/Test/CMSIS-DSP-1.17.1/dsppp" -I"H:/OpenECU/Code/Test/CMSIS-DSP-1.17.1/PrivateInclude" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-CMSIS-2d-DSP-2d-1-2e-17-2e-1-2f-Source-2f-ControllerFunctions

clean-CMSIS-2d-DSP-2d-1-2e-17-2e-1-2f-Source-2f-ControllerFunctions:
	-$(RM) ./CMSIS-DSP-1.17.1/Source/ControllerFunctions/ControllerFunctions.cyclo ./CMSIS-DSP-1.17.1/Source/ControllerFunctions/ControllerFunctions.d ./CMSIS-DSP-1.17.1/Source/ControllerFunctions/ControllerFunctions.o ./CMSIS-DSP-1.17.1/Source/ControllerFunctions/ControllerFunctions.su ./CMSIS-DSP-1.17.1/Source/ControllerFunctions/arm_pid_init_f32.cyclo ./CMSIS-DSP-1.17.1/Source/ControllerFunctions/arm_pid_init_f32.d ./CMSIS-DSP-1.17.1/Source/ControllerFunctions/arm_pid_init_f32.o ./CMSIS-DSP-1.17.1/Source/ControllerFunctions/arm_pid_init_f32.su ./CMSIS-DSP-1.17.1/Source/ControllerFunctions/arm_pid_init_q15.cyclo ./CMSIS-DSP-1.17.1/Source/ControllerFunctions/arm_pid_init_q15.d ./CMSIS-DSP-1.17.1/Source/ControllerFunctions/arm_pid_init_q15.o ./CMSIS-DSP-1.17.1/Source/ControllerFunctions/arm_pid_init_q15.su ./CMSIS-DSP-1.17.1/Source/ControllerFunctions/arm_pid_init_q31.cyclo ./CMSIS-DSP-1.17.1/Source/ControllerFunctions/arm_pid_init_q31.d ./CMSIS-DSP-1.17.1/Source/ControllerFunctions/arm_pid_init_q31.o ./CMSIS-DSP-1.17.1/Source/ControllerFunctions/arm_pid_init_q31.su ./CMSIS-DSP-1.17.1/Source/ControllerFunctions/arm_pid_reset_f32.cyclo ./CMSIS-DSP-1.17.1/Source/ControllerFunctions/arm_pid_reset_f32.d ./CMSIS-DSP-1.17.1/Source/ControllerFunctions/arm_pid_reset_f32.o ./CMSIS-DSP-1.17.1/Source/ControllerFunctions/arm_pid_reset_f32.su ./CMSIS-DSP-1.17.1/Source/ControllerFunctions/arm_pid_reset_q15.cyclo ./CMSIS-DSP-1.17.1/Source/ControllerFunctions/arm_pid_reset_q15.d ./CMSIS-DSP-1.17.1/Source/ControllerFunctions/arm_pid_reset_q15.o ./CMSIS-DSP-1.17.1/Source/ControllerFunctions/arm_pid_reset_q15.su ./CMSIS-DSP-1.17.1/Source/ControllerFunctions/arm_pid_reset_q31.cyclo ./CMSIS-DSP-1.17.1/Source/ControllerFunctions/arm_pid_reset_q31.d ./CMSIS-DSP-1.17.1/Source/ControllerFunctions/arm_pid_reset_q31.o ./CMSIS-DSP-1.17.1/Source/ControllerFunctions/arm_pid_reset_q31.su ./CMSIS-DSP-1.17.1/Source/ControllerFunctions/arm_sin_cos_f32.cyclo ./CMSIS-DSP-1.17.1/Source/ControllerFunctions/arm_sin_cos_f32.d ./CMSIS-DSP-1.17.1/Source/ControllerFunctions/arm_sin_cos_f32.o ./CMSIS-DSP-1.17.1/Source/ControllerFunctions/arm_sin_cos_f32.su ./CMSIS-DSP-1.17.1/Source/ControllerFunctions/arm_sin_cos_q31.cyclo ./CMSIS-DSP-1.17.1/Source/ControllerFunctions/arm_sin_cos_q31.d ./CMSIS-DSP-1.17.1/Source/ControllerFunctions/arm_sin_cos_q31.o ./CMSIS-DSP-1.17.1/Source/ControllerFunctions/arm_sin_cos_q31.su

.PHONY: clean-CMSIS-2d-DSP-2d-1-2e-17-2e-1-2f-Source-2f-ControllerFunctions

