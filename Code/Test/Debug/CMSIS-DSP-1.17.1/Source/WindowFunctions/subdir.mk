################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (14.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../CMSIS-DSP-1.17.1/Source/WindowFunctions/WindowFunctions.c \
../CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_bartlett_f32.c \
../CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_bartlett_f64.c \
../CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_blackman_harris_92db_f32.c \
../CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_blackman_harris_92db_f64.c \
../CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_hamming_f32.c \
../CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_hamming_f64.c \
../CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_hanning_f32.c \
../CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_hanning_f64.c \
../CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_hft116d_f32.c \
../CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_hft116d_f64.c \
../CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_hft144d_f32.c \
../CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_hft144d_f64.c \
../CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_hft169d_f32.c \
../CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_hft169d_f64.c \
../CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_hft196d_f32.c \
../CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_hft196d_f64.c \
../CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_hft223d_f32.c \
../CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_hft223d_f64.c \
../CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_hft248d_f32.c \
../CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_hft248d_f64.c \
../CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_hft90d_f32.c \
../CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_hft90d_f64.c \
../CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_hft95_f32.c \
../CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_hft95_f64.c \
../CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_nuttall3_f32.c \
../CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_nuttall3_f64.c \
../CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_nuttall3a_f32.c \
../CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_nuttall3a_f64.c \
../CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_nuttall3b_f32.c \
../CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_nuttall3b_f64.c \
../CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_nuttall4_f32.c \
../CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_nuttall4_f64.c \
../CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_nuttall4a_f32.c \
../CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_nuttall4a_f64.c \
../CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_nuttall4b_f32.c \
../CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_nuttall4b_f64.c \
../CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_nuttall4c_f32.c \
../CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_nuttall4c_f64.c \
../CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_welch_f32.c \
../CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_welch_f64.c 

OBJS += \
./CMSIS-DSP-1.17.1/Source/WindowFunctions/WindowFunctions.o \
./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_bartlett_f32.o \
./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_bartlett_f64.o \
./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_blackman_harris_92db_f32.o \
./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_blackman_harris_92db_f64.o \
./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_hamming_f32.o \
./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_hamming_f64.o \
./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_hanning_f32.o \
./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_hanning_f64.o \
./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_hft116d_f32.o \
./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_hft116d_f64.o \
./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_hft144d_f32.o \
./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_hft144d_f64.o \
./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_hft169d_f32.o \
./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_hft169d_f64.o \
./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_hft196d_f32.o \
./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_hft196d_f64.o \
./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_hft223d_f32.o \
./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_hft223d_f64.o \
./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_hft248d_f32.o \
./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_hft248d_f64.o \
./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_hft90d_f32.o \
./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_hft90d_f64.o \
./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_hft95_f32.o \
./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_hft95_f64.o \
./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_nuttall3_f32.o \
./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_nuttall3_f64.o \
./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_nuttall3a_f32.o \
./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_nuttall3a_f64.o \
./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_nuttall3b_f32.o \
./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_nuttall3b_f64.o \
./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_nuttall4_f32.o \
./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_nuttall4_f64.o \
./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_nuttall4a_f32.o \
./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_nuttall4a_f64.o \
./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_nuttall4b_f32.o \
./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_nuttall4b_f64.o \
./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_nuttall4c_f32.o \
./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_nuttall4c_f64.o \
./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_welch_f32.o \
./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_welch_f64.o 

C_DEPS += \
./CMSIS-DSP-1.17.1/Source/WindowFunctions/WindowFunctions.d \
./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_bartlett_f32.d \
./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_bartlett_f64.d \
./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_blackman_harris_92db_f32.d \
./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_blackman_harris_92db_f64.d \
./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_hamming_f32.d \
./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_hamming_f64.d \
./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_hanning_f32.d \
./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_hanning_f64.d \
./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_hft116d_f32.d \
./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_hft116d_f64.d \
./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_hft144d_f32.d \
./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_hft144d_f64.d \
./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_hft169d_f32.d \
./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_hft169d_f64.d \
./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_hft196d_f32.d \
./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_hft196d_f64.d \
./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_hft223d_f32.d \
./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_hft223d_f64.d \
./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_hft248d_f32.d \
./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_hft248d_f64.d \
./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_hft90d_f32.d \
./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_hft90d_f64.d \
./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_hft95_f32.d \
./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_hft95_f64.d \
./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_nuttall3_f32.d \
./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_nuttall3_f64.d \
./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_nuttall3a_f32.d \
./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_nuttall3a_f64.d \
./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_nuttall3b_f32.d \
./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_nuttall3b_f64.d \
./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_nuttall4_f32.d \
./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_nuttall4_f64.d \
./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_nuttall4a_f32.d \
./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_nuttall4a_f64.d \
./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_nuttall4b_f32.d \
./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_nuttall4b_f64.d \
./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_nuttall4c_f32.d \
./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_nuttall4c_f64.d \
./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_welch_f32.d \
./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_welch_f64.d 


# Each subdirectory must supply rules for building sources it contributes
CMSIS-DSP-1.17.1/Source/WindowFunctions/%.o CMSIS-DSP-1.17.1/Source/WindowFunctions/%.su CMSIS-DSP-1.17.1/Source/WindowFunctions/%.cyclo: ../CMSIS-DSP-1.17.1/Source/WindowFunctions/%.c CMSIS-DSP-1.17.1/Source/WindowFunctions/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32 -DSTM32F4 -DSTM32F446RETx -c -I../Inc -I"H:/OpenECU/Code/Test/Module" -I"H:/OpenECU/Code/Test/CMSIS" -I"H:/OpenECU/Code/Test/CMSIS/Device/ST/STM32F4xx/Include" -I"H:/OpenECU/Code/Test/CMSIS/Include" -I"H:/OpenECU/Code/Test/CMSIS-DSP-1.17.1/Include" -I"H:/OpenECU/Code/Test/CMSIS-DSP-1.17.1/Include/dsp" -I"H:/OpenECU/Code/Test/CMSIS-DSP-1.17.1/dsppp" -I"H:/OpenECU/Code/Test/CMSIS-DSP-1.17.1/PrivateInclude" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-CMSIS-2d-DSP-2d-1-2e-17-2e-1-2f-Source-2f-WindowFunctions

clean-CMSIS-2d-DSP-2d-1-2e-17-2e-1-2f-Source-2f-WindowFunctions:
	-$(RM) ./CMSIS-DSP-1.17.1/Source/WindowFunctions/WindowFunctions.cyclo ./CMSIS-DSP-1.17.1/Source/WindowFunctions/WindowFunctions.d ./CMSIS-DSP-1.17.1/Source/WindowFunctions/WindowFunctions.o ./CMSIS-DSP-1.17.1/Source/WindowFunctions/WindowFunctions.su ./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_bartlett_f32.cyclo ./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_bartlett_f32.d ./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_bartlett_f32.o ./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_bartlett_f32.su ./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_bartlett_f64.cyclo ./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_bartlett_f64.d ./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_bartlett_f64.o ./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_bartlett_f64.su ./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_blackman_harris_92db_f32.cyclo ./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_blackman_harris_92db_f32.d ./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_blackman_harris_92db_f32.o ./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_blackman_harris_92db_f32.su ./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_blackman_harris_92db_f64.cyclo ./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_blackman_harris_92db_f64.d ./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_blackman_harris_92db_f64.o ./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_blackman_harris_92db_f64.su ./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_hamming_f32.cyclo ./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_hamming_f32.d ./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_hamming_f32.o ./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_hamming_f32.su ./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_hamming_f64.cyclo ./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_hamming_f64.d ./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_hamming_f64.o ./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_hamming_f64.su ./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_hanning_f32.cyclo ./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_hanning_f32.d ./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_hanning_f32.o ./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_hanning_f32.su ./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_hanning_f64.cyclo ./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_hanning_f64.d ./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_hanning_f64.o ./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_hanning_f64.su ./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_hft116d_f32.cyclo ./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_hft116d_f32.d ./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_hft116d_f32.o ./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_hft116d_f32.su ./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_hft116d_f64.cyclo ./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_hft116d_f64.d ./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_hft116d_f64.o ./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_hft116d_f64.su ./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_hft144d_f32.cyclo ./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_hft144d_f32.d ./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_hft144d_f32.o ./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_hft144d_f32.su ./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_hft144d_f64.cyclo ./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_hft144d_f64.d ./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_hft144d_f64.o ./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_hft144d_f64.su ./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_hft169d_f32.cyclo ./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_hft169d_f32.d ./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_hft169d_f32.o ./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_hft169d_f32.su ./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_hft169d_f64.cyclo ./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_hft169d_f64.d ./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_hft169d_f64.o ./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_hft169d_f64.su ./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_hft196d_f32.cyclo ./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_hft196d_f32.d ./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_hft196d_f32.o ./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_hft196d_f32.su ./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_hft196d_f64.cyclo ./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_hft196d_f64.d ./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_hft196d_f64.o ./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_hft196d_f64.su ./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_hft223d_f32.cyclo ./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_hft223d_f32.d ./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_hft223d_f32.o ./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_hft223d_f32.su ./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_hft223d_f64.cyclo ./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_hft223d_f64.d ./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_hft223d_f64.o ./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_hft223d_f64.su ./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_hft248d_f32.cyclo ./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_hft248d_f32.d ./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_hft248d_f32.o ./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_hft248d_f32.su ./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_hft248d_f64.cyclo ./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_hft248d_f64.d ./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_hft248d_f64.o ./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_hft248d_f64.su ./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_hft90d_f32.cyclo ./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_hft90d_f32.d ./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_hft90d_f32.o ./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_hft90d_f32.su ./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_hft90d_f64.cyclo ./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_hft90d_f64.d ./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_hft90d_f64.o ./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_hft90d_f64.su ./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_hft95_f32.cyclo ./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_hft95_f32.d ./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_hft95_f32.o ./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_hft95_f32.su
	-$(RM) ./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_hft95_f64.cyclo ./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_hft95_f64.d ./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_hft95_f64.o ./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_hft95_f64.su ./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_nuttall3_f32.cyclo ./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_nuttall3_f32.d ./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_nuttall3_f32.o ./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_nuttall3_f32.su ./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_nuttall3_f64.cyclo ./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_nuttall3_f64.d ./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_nuttall3_f64.o ./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_nuttall3_f64.su ./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_nuttall3a_f32.cyclo ./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_nuttall3a_f32.d ./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_nuttall3a_f32.o ./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_nuttall3a_f32.su ./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_nuttall3a_f64.cyclo ./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_nuttall3a_f64.d ./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_nuttall3a_f64.o ./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_nuttall3a_f64.su ./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_nuttall3b_f32.cyclo ./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_nuttall3b_f32.d ./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_nuttall3b_f32.o ./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_nuttall3b_f32.su ./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_nuttall3b_f64.cyclo ./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_nuttall3b_f64.d ./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_nuttall3b_f64.o ./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_nuttall3b_f64.su ./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_nuttall4_f32.cyclo ./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_nuttall4_f32.d ./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_nuttall4_f32.o ./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_nuttall4_f32.su ./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_nuttall4_f64.cyclo ./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_nuttall4_f64.d ./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_nuttall4_f64.o ./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_nuttall4_f64.su ./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_nuttall4a_f32.cyclo ./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_nuttall4a_f32.d ./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_nuttall4a_f32.o ./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_nuttall4a_f32.su ./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_nuttall4a_f64.cyclo ./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_nuttall4a_f64.d ./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_nuttall4a_f64.o ./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_nuttall4a_f64.su ./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_nuttall4b_f32.cyclo ./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_nuttall4b_f32.d ./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_nuttall4b_f32.o ./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_nuttall4b_f32.su ./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_nuttall4b_f64.cyclo ./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_nuttall4b_f64.d ./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_nuttall4b_f64.o ./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_nuttall4b_f64.su ./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_nuttall4c_f32.cyclo ./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_nuttall4c_f32.d ./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_nuttall4c_f32.o ./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_nuttall4c_f32.su ./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_nuttall4c_f64.cyclo ./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_nuttall4c_f64.d ./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_nuttall4c_f64.o ./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_nuttall4c_f64.su ./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_welch_f32.cyclo ./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_welch_f32.d ./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_welch_f32.o ./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_welch_f32.su ./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_welch_f64.cyclo ./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_welch_f64.d ./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_welch_f64.o ./CMSIS-DSP-1.17.1/Source/WindowFunctions/arm_welch_f64.su

.PHONY: clean-CMSIS-2d-DSP-2d-1-2e-17-2e-1-2f-Source-2f-WindowFunctions

