################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (14.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../CMSIS-DSP-1.17.1/ComputeLibrary/Source/arm_cl_tables.c 

OBJS += \
./CMSIS-DSP-1.17.1/ComputeLibrary/Source/arm_cl_tables.o 

C_DEPS += \
./CMSIS-DSP-1.17.1/ComputeLibrary/Source/arm_cl_tables.d 


# Each subdirectory must supply rules for building sources it contributes
CMSIS-DSP-1.17.1/ComputeLibrary/Source/%.o CMSIS-DSP-1.17.1/ComputeLibrary/Source/%.su CMSIS-DSP-1.17.1/ComputeLibrary/Source/%.cyclo: ../CMSIS-DSP-1.17.1/ComputeLibrary/Source/%.c CMSIS-DSP-1.17.1/ComputeLibrary/Source/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32 -DSTM32F4 -DSTM32F446RETx -c -I../Inc -I"H:/OpenECU/Code/Test/Module" -I"H:/OpenECU/Code/Test/CMSIS" -I"H:/OpenECU/Code/Test/CMSIS/Device/ST/STM32F4xx/Include" -I"H:/OpenECU/Code/Test/CMSIS/Include" -I"H:/OpenECU/Code/Test/CMSIS-DSP-1.17.1/Include" -I"H:/OpenECU/Code/Test/CMSIS-DSP-1.17.1/Include/dsp" -I"H:/OpenECU/Code/Test/CMSIS-DSP-1.17.1/dsppp" -I"H:/OpenECU/Code/Test/CMSIS-DSP-1.17.1/PrivateInclude" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-CMSIS-2d-DSP-2d-1-2e-17-2e-1-2f-ComputeLibrary-2f-Source

clean-CMSIS-2d-DSP-2d-1-2e-17-2e-1-2f-ComputeLibrary-2f-Source:
	-$(RM) ./CMSIS-DSP-1.17.1/ComputeLibrary/Source/arm_cl_tables.cyclo ./CMSIS-DSP-1.17.1/ComputeLibrary/Source/arm_cl_tables.d ./CMSIS-DSP-1.17.1/ComputeLibrary/Source/arm_cl_tables.o ./CMSIS-DSP-1.17.1/ComputeLibrary/Source/arm_cl_tables.su

.PHONY: clean-CMSIS-2d-DSP-2d-1-2e-17-2e-1-2f-ComputeLibrary-2f-Source

