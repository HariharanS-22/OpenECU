################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (14.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../CMSIS-DSP-1.17.1/Ne10/CMSIS_NE10_fft_generic_float16.neonintrisic.c \
../CMSIS-DSP-1.17.1/Ne10/CMSIS_NE10_fft_generic_float32.neonintrisic.c \
../CMSIS-DSP-1.17.1/Ne10/CMSIS_NE10_fft_generic_int32.c \
../CMSIS-DSP-1.17.1/Ne10/CMSIS_NE10_fft_generic_int32.neonintrisic.c \
../CMSIS-DSP-1.17.1/Ne10/CMSIS_NE10_fft_init.c \
../CMSIS-DSP-1.17.1/Ne10/NE10_fft_float16.neonintrinsic.c \
../CMSIS-DSP-1.17.1/Ne10/NE10_fft_float32.neonintrinsic.c \
../CMSIS-DSP-1.17.1/Ne10/NE10_fft_int16.neonintrinsic.c \
../CMSIS-DSP-1.17.1/Ne10/NE10_fft_int32.neonintrinsic.c \
../CMSIS-DSP-1.17.1/Ne10/NE10_rfft_float16.neonintrinsic.c \
../CMSIS-DSP-1.17.1/Ne10/NE10_rfft_float32.neonintrinsic.c 

OBJS += \
./CMSIS-DSP-1.17.1/Ne10/CMSIS_NE10_fft_generic_float16.neonintrisic.o \
./CMSIS-DSP-1.17.1/Ne10/CMSIS_NE10_fft_generic_float32.neonintrisic.o \
./CMSIS-DSP-1.17.1/Ne10/CMSIS_NE10_fft_generic_int32.o \
./CMSIS-DSP-1.17.1/Ne10/CMSIS_NE10_fft_generic_int32.neonintrisic.o \
./CMSIS-DSP-1.17.1/Ne10/CMSIS_NE10_fft_init.o \
./CMSIS-DSP-1.17.1/Ne10/NE10_fft_float16.neonintrinsic.o \
./CMSIS-DSP-1.17.1/Ne10/NE10_fft_float32.neonintrinsic.o \
./CMSIS-DSP-1.17.1/Ne10/NE10_fft_int16.neonintrinsic.o \
./CMSIS-DSP-1.17.1/Ne10/NE10_fft_int32.neonintrinsic.o \
./CMSIS-DSP-1.17.1/Ne10/NE10_rfft_float16.neonintrinsic.o \
./CMSIS-DSP-1.17.1/Ne10/NE10_rfft_float32.neonintrinsic.o 

C_DEPS += \
./CMSIS-DSP-1.17.1/Ne10/CMSIS_NE10_fft_generic_float16.neonintrisic.d \
./CMSIS-DSP-1.17.1/Ne10/CMSIS_NE10_fft_generic_float32.neonintrisic.d \
./CMSIS-DSP-1.17.1/Ne10/CMSIS_NE10_fft_generic_int32.d \
./CMSIS-DSP-1.17.1/Ne10/CMSIS_NE10_fft_generic_int32.neonintrisic.d \
./CMSIS-DSP-1.17.1/Ne10/CMSIS_NE10_fft_init.d \
./CMSIS-DSP-1.17.1/Ne10/NE10_fft_float16.neonintrinsic.d \
./CMSIS-DSP-1.17.1/Ne10/NE10_fft_float32.neonintrinsic.d \
./CMSIS-DSP-1.17.1/Ne10/NE10_fft_int16.neonintrinsic.d \
./CMSIS-DSP-1.17.1/Ne10/NE10_fft_int32.neonintrinsic.d \
./CMSIS-DSP-1.17.1/Ne10/NE10_rfft_float16.neonintrinsic.d \
./CMSIS-DSP-1.17.1/Ne10/NE10_rfft_float32.neonintrinsic.d 


# Each subdirectory must supply rules for building sources it contributes
CMSIS-DSP-1.17.1/Ne10/%.o CMSIS-DSP-1.17.1/Ne10/%.su CMSIS-DSP-1.17.1/Ne10/%.cyclo: ../CMSIS-DSP-1.17.1/Ne10/%.c CMSIS-DSP-1.17.1/Ne10/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32 -DSTM32F4 -DSTM32F446RETx -c -I../Inc -I"H:/OpenECU/Code/Test/Module" -I"H:/OpenECU/Code/Test/CMSIS" -I"H:/OpenECU/Code/Test/CMSIS/Device/ST/STM32F4xx/Include" -I"H:/OpenECU/Code/Test/CMSIS/Include" -I"H:/OpenECU/Code/Test/CMSIS-DSP-1.17.1/Include" -I"H:/OpenECU/Code/Test/CMSIS-DSP-1.17.1/Include/dsp" -I"H:/OpenECU/Code/Test/CMSIS-DSP-1.17.1/dsppp" -I"H:/OpenECU/Code/Test/CMSIS-DSP-1.17.1/PrivateInclude" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-CMSIS-2d-DSP-2d-1-2e-17-2e-1-2f-Ne10

clean-CMSIS-2d-DSP-2d-1-2e-17-2e-1-2f-Ne10:
	-$(RM) ./CMSIS-DSP-1.17.1/Ne10/CMSIS_NE10_fft_generic_float16.neonintrisic.cyclo ./CMSIS-DSP-1.17.1/Ne10/CMSIS_NE10_fft_generic_float16.neonintrisic.d ./CMSIS-DSP-1.17.1/Ne10/CMSIS_NE10_fft_generic_float16.neonintrisic.o ./CMSIS-DSP-1.17.1/Ne10/CMSIS_NE10_fft_generic_float16.neonintrisic.su ./CMSIS-DSP-1.17.1/Ne10/CMSIS_NE10_fft_generic_float32.neonintrisic.cyclo ./CMSIS-DSP-1.17.1/Ne10/CMSIS_NE10_fft_generic_float32.neonintrisic.d ./CMSIS-DSP-1.17.1/Ne10/CMSIS_NE10_fft_generic_float32.neonintrisic.o ./CMSIS-DSP-1.17.1/Ne10/CMSIS_NE10_fft_generic_float32.neonintrisic.su ./CMSIS-DSP-1.17.1/Ne10/CMSIS_NE10_fft_generic_int32.cyclo ./CMSIS-DSP-1.17.1/Ne10/CMSIS_NE10_fft_generic_int32.d ./CMSIS-DSP-1.17.1/Ne10/CMSIS_NE10_fft_generic_int32.neonintrisic.cyclo ./CMSIS-DSP-1.17.1/Ne10/CMSIS_NE10_fft_generic_int32.neonintrisic.d ./CMSIS-DSP-1.17.1/Ne10/CMSIS_NE10_fft_generic_int32.neonintrisic.o ./CMSIS-DSP-1.17.1/Ne10/CMSIS_NE10_fft_generic_int32.neonintrisic.su ./CMSIS-DSP-1.17.1/Ne10/CMSIS_NE10_fft_generic_int32.o ./CMSIS-DSP-1.17.1/Ne10/CMSIS_NE10_fft_generic_int32.su ./CMSIS-DSP-1.17.1/Ne10/CMSIS_NE10_fft_init.cyclo ./CMSIS-DSP-1.17.1/Ne10/CMSIS_NE10_fft_init.d ./CMSIS-DSP-1.17.1/Ne10/CMSIS_NE10_fft_init.o ./CMSIS-DSP-1.17.1/Ne10/CMSIS_NE10_fft_init.su ./CMSIS-DSP-1.17.1/Ne10/NE10_fft_float16.neonintrinsic.cyclo ./CMSIS-DSP-1.17.1/Ne10/NE10_fft_float16.neonintrinsic.d ./CMSIS-DSP-1.17.1/Ne10/NE10_fft_float16.neonintrinsic.o ./CMSIS-DSP-1.17.1/Ne10/NE10_fft_float16.neonintrinsic.su ./CMSIS-DSP-1.17.1/Ne10/NE10_fft_float32.neonintrinsic.cyclo ./CMSIS-DSP-1.17.1/Ne10/NE10_fft_float32.neonintrinsic.d ./CMSIS-DSP-1.17.1/Ne10/NE10_fft_float32.neonintrinsic.o ./CMSIS-DSP-1.17.1/Ne10/NE10_fft_float32.neonintrinsic.su ./CMSIS-DSP-1.17.1/Ne10/NE10_fft_int16.neonintrinsic.cyclo ./CMSIS-DSP-1.17.1/Ne10/NE10_fft_int16.neonintrinsic.d ./CMSIS-DSP-1.17.1/Ne10/NE10_fft_int16.neonintrinsic.o ./CMSIS-DSP-1.17.1/Ne10/NE10_fft_int16.neonintrinsic.su ./CMSIS-DSP-1.17.1/Ne10/NE10_fft_int32.neonintrinsic.cyclo ./CMSIS-DSP-1.17.1/Ne10/NE10_fft_int32.neonintrinsic.d ./CMSIS-DSP-1.17.1/Ne10/NE10_fft_int32.neonintrinsic.o ./CMSIS-DSP-1.17.1/Ne10/NE10_fft_int32.neonintrinsic.su ./CMSIS-DSP-1.17.1/Ne10/NE10_rfft_float16.neonintrinsic.cyclo ./CMSIS-DSP-1.17.1/Ne10/NE10_rfft_float16.neonintrinsic.d ./CMSIS-DSP-1.17.1/Ne10/NE10_rfft_float16.neonintrinsic.o ./CMSIS-DSP-1.17.1/Ne10/NE10_rfft_float16.neonintrinsic.su ./CMSIS-DSP-1.17.1/Ne10/NE10_rfft_float32.neonintrinsic.cyclo ./CMSIS-DSP-1.17.1/Ne10/NE10_rfft_float32.neonintrinsic.d ./CMSIS-DSP-1.17.1/Ne10/NE10_rfft_float32.neonintrinsic.o ./CMSIS-DSP-1.17.1/Ne10/NE10_rfft_float32.neonintrinsic.su

.PHONY: clean-CMSIS-2d-DSP-2d-1-2e-17-2e-1-2f-Ne10

