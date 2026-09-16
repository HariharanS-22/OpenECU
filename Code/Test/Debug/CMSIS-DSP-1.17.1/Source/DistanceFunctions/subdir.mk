################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (14.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../CMSIS-DSP-1.17.1/Source/DistanceFunctions/DistanceFunctions.c \
../CMSIS-DSP-1.17.1/Source/DistanceFunctions/DistanceFunctionsF16.c \
../CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_boolean_distance.c \
../CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_braycurtis_distance_f16.c \
../CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_braycurtis_distance_f32.c \
../CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_canberra_distance_f16.c \
../CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_canberra_distance_f32.c \
../CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_chebyshev_distance_f16.c \
../CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_chebyshev_distance_f32.c \
../CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_chebyshev_distance_f64.c \
../CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_cityblock_distance_f16.c \
../CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_cityblock_distance_f32.c \
../CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_cityblock_distance_f64.c \
../CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_correlation_distance_f16.c \
../CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_correlation_distance_f32.c \
../CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_cosine_distance_f16.c \
../CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_cosine_distance_f32.c \
../CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_cosine_distance_f64.c \
../CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_dice_distance.c \
../CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_dtw_distance_f32.c \
../CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_dtw_init_window_q7.c \
../CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_dtw_path_f32.c \
../CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_euclidean_distance_f16.c \
../CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_euclidean_distance_f32.c \
../CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_euclidean_distance_f64.c \
../CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_hamming_distance.c \
../CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_jaccard_distance.c \
../CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_jensenshannon_distance_f16.c \
../CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_jensenshannon_distance_f32.c \
../CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_kulsinski_distance.c \
../CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_minkowski_distance_f16.c \
../CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_minkowski_distance_f32.c \
../CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_rogerstanimoto_distance.c \
../CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_russellrao_distance.c \
../CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_sokalmichener_distance.c \
../CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_sokalsneath_distance.c \
../CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_yule_distance.c 

OBJS += \
./CMSIS-DSP-1.17.1/Source/DistanceFunctions/DistanceFunctions.o \
./CMSIS-DSP-1.17.1/Source/DistanceFunctions/DistanceFunctionsF16.o \
./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_boolean_distance.o \
./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_braycurtis_distance_f16.o \
./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_braycurtis_distance_f32.o \
./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_canberra_distance_f16.o \
./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_canberra_distance_f32.o \
./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_chebyshev_distance_f16.o \
./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_chebyshev_distance_f32.o \
./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_chebyshev_distance_f64.o \
./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_cityblock_distance_f16.o \
./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_cityblock_distance_f32.o \
./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_cityblock_distance_f64.o \
./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_correlation_distance_f16.o \
./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_correlation_distance_f32.o \
./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_cosine_distance_f16.o \
./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_cosine_distance_f32.o \
./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_cosine_distance_f64.o \
./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_dice_distance.o \
./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_dtw_distance_f32.o \
./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_dtw_init_window_q7.o \
./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_dtw_path_f32.o \
./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_euclidean_distance_f16.o \
./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_euclidean_distance_f32.o \
./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_euclidean_distance_f64.o \
./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_hamming_distance.o \
./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_jaccard_distance.o \
./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_jensenshannon_distance_f16.o \
./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_jensenshannon_distance_f32.o \
./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_kulsinski_distance.o \
./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_minkowski_distance_f16.o \
./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_minkowski_distance_f32.o \
./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_rogerstanimoto_distance.o \
./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_russellrao_distance.o \
./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_sokalmichener_distance.o \
./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_sokalsneath_distance.o \
./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_yule_distance.o 

C_DEPS += \
./CMSIS-DSP-1.17.1/Source/DistanceFunctions/DistanceFunctions.d \
./CMSIS-DSP-1.17.1/Source/DistanceFunctions/DistanceFunctionsF16.d \
./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_boolean_distance.d \
./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_braycurtis_distance_f16.d \
./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_braycurtis_distance_f32.d \
./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_canberra_distance_f16.d \
./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_canberra_distance_f32.d \
./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_chebyshev_distance_f16.d \
./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_chebyshev_distance_f32.d \
./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_chebyshev_distance_f64.d \
./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_cityblock_distance_f16.d \
./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_cityblock_distance_f32.d \
./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_cityblock_distance_f64.d \
./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_correlation_distance_f16.d \
./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_correlation_distance_f32.d \
./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_cosine_distance_f16.d \
./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_cosine_distance_f32.d \
./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_cosine_distance_f64.d \
./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_dice_distance.d \
./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_dtw_distance_f32.d \
./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_dtw_init_window_q7.d \
./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_dtw_path_f32.d \
./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_euclidean_distance_f16.d \
./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_euclidean_distance_f32.d \
./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_euclidean_distance_f64.d \
./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_hamming_distance.d \
./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_jaccard_distance.d \
./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_jensenshannon_distance_f16.d \
./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_jensenshannon_distance_f32.d \
./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_kulsinski_distance.d \
./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_minkowski_distance_f16.d \
./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_minkowski_distance_f32.d \
./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_rogerstanimoto_distance.d \
./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_russellrao_distance.d \
./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_sokalmichener_distance.d \
./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_sokalsneath_distance.d \
./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_yule_distance.d 


# Each subdirectory must supply rules for building sources it contributes
CMSIS-DSP-1.17.1/Source/DistanceFunctions/%.o CMSIS-DSP-1.17.1/Source/DistanceFunctions/%.su CMSIS-DSP-1.17.1/Source/DistanceFunctions/%.cyclo: ../CMSIS-DSP-1.17.1/Source/DistanceFunctions/%.c CMSIS-DSP-1.17.1/Source/DistanceFunctions/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32 -DSTM32F4 -DSTM32F446RETx -c -I../Inc -I"H:/OpenECU/Code/Test/Module" -I"H:/OpenECU/Code/Test/CMSIS" -I"H:/OpenECU/Code/Test/CMSIS/Device/ST/STM32F4xx/Include" -I"H:/OpenECU/Code/Test/CMSIS/Include" -I"H:/OpenECU/Code/Test/CMSIS-DSP-1.17.1/Include" -I"H:/OpenECU/Code/Test/CMSIS-DSP-1.17.1/Include/dsp" -I"H:/OpenECU/Code/Test/CMSIS-DSP-1.17.1/dsppp" -I"H:/OpenECU/Code/Test/CMSIS-DSP-1.17.1/PrivateInclude" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-CMSIS-2d-DSP-2d-1-2e-17-2e-1-2f-Source-2f-DistanceFunctions

clean-CMSIS-2d-DSP-2d-1-2e-17-2e-1-2f-Source-2f-DistanceFunctions:
	-$(RM) ./CMSIS-DSP-1.17.1/Source/DistanceFunctions/DistanceFunctions.cyclo ./CMSIS-DSP-1.17.1/Source/DistanceFunctions/DistanceFunctions.d ./CMSIS-DSP-1.17.1/Source/DistanceFunctions/DistanceFunctions.o ./CMSIS-DSP-1.17.1/Source/DistanceFunctions/DistanceFunctions.su ./CMSIS-DSP-1.17.1/Source/DistanceFunctions/DistanceFunctionsF16.cyclo ./CMSIS-DSP-1.17.1/Source/DistanceFunctions/DistanceFunctionsF16.d ./CMSIS-DSP-1.17.1/Source/DistanceFunctions/DistanceFunctionsF16.o ./CMSIS-DSP-1.17.1/Source/DistanceFunctions/DistanceFunctionsF16.su ./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_boolean_distance.cyclo ./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_boolean_distance.d ./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_boolean_distance.o ./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_boolean_distance.su ./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_braycurtis_distance_f16.cyclo ./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_braycurtis_distance_f16.d ./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_braycurtis_distance_f16.o ./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_braycurtis_distance_f16.su ./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_braycurtis_distance_f32.cyclo ./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_braycurtis_distance_f32.d ./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_braycurtis_distance_f32.o ./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_braycurtis_distance_f32.su ./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_canberra_distance_f16.cyclo ./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_canberra_distance_f16.d ./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_canberra_distance_f16.o ./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_canberra_distance_f16.su ./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_canberra_distance_f32.cyclo ./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_canberra_distance_f32.d ./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_canberra_distance_f32.o ./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_canberra_distance_f32.su ./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_chebyshev_distance_f16.cyclo ./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_chebyshev_distance_f16.d ./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_chebyshev_distance_f16.o ./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_chebyshev_distance_f16.su ./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_chebyshev_distance_f32.cyclo ./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_chebyshev_distance_f32.d ./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_chebyshev_distance_f32.o ./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_chebyshev_distance_f32.su ./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_chebyshev_distance_f64.cyclo ./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_chebyshev_distance_f64.d ./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_chebyshev_distance_f64.o ./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_chebyshev_distance_f64.su ./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_cityblock_distance_f16.cyclo ./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_cityblock_distance_f16.d ./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_cityblock_distance_f16.o ./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_cityblock_distance_f16.su ./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_cityblock_distance_f32.cyclo ./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_cityblock_distance_f32.d ./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_cityblock_distance_f32.o ./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_cityblock_distance_f32.su ./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_cityblock_distance_f64.cyclo ./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_cityblock_distance_f64.d ./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_cityblock_distance_f64.o ./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_cityblock_distance_f64.su ./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_correlation_distance_f16.cyclo ./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_correlation_distance_f16.d ./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_correlation_distance_f16.o ./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_correlation_distance_f16.su ./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_correlation_distance_f32.cyclo ./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_correlation_distance_f32.d ./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_correlation_distance_f32.o ./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_correlation_distance_f32.su ./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_cosine_distance_f16.cyclo ./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_cosine_distance_f16.d ./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_cosine_distance_f16.o ./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_cosine_distance_f16.su ./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_cosine_distance_f32.cyclo ./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_cosine_distance_f32.d ./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_cosine_distance_f32.o ./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_cosine_distance_f32.su ./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_cosine_distance_f64.cyclo ./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_cosine_distance_f64.d ./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_cosine_distance_f64.o ./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_cosine_distance_f64.su ./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_dice_distance.cyclo ./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_dice_distance.d ./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_dice_distance.o ./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_dice_distance.su ./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_dtw_distance_f32.cyclo ./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_dtw_distance_f32.d ./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_dtw_distance_f32.o ./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_dtw_distance_f32.su ./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_dtw_init_window_q7.cyclo ./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_dtw_init_window_q7.d ./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_dtw_init_window_q7.o
	-$(RM) ./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_dtw_init_window_q7.su ./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_dtw_path_f32.cyclo ./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_dtw_path_f32.d ./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_dtw_path_f32.o ./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_dtw_path_f32.su ./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_euclidean_distance_f16.cyclo ./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_euclidean_distance_f16.d ./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_euclidean_distance_f16.o ./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_euclidean_distance_f16.su ./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_euclidean_distance_f32.cyclo ./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_euclidean_distance_f32.d ./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_euclidean_distance_f32.o ./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_euclidean_distance_f32.su ./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_euclidean_distance_f64.cyclo ./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_euclidean_distance_f64.d ./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_euclidean_distance_f64.o ./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_euclidean_distance_f64.su ./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_hamming_distance.cyclo ./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_hamming_distance.d ./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_hamming_distance.o ./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_hamming_distance.su ./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_jaccard_distance.cyclo ./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_jaccard_distance.d ./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_jaccard_distance.o ./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_jaccard_distance.su ./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_jensenshannon_distance_f16.cyclo ./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_jensenshannon_distance_f16.d ./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_jensenshannon_distance_f16.o ./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_jensenshannon_distance_f16.su ./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_jensenshannon_distance_f32.cyclo ./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_jensenshannon_distance_f32.d ./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_jensenshannon_distance_f32.o ./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_jensenshannon_distance_f32.su ./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_kulsinski_distance.cyclo ./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_kulsinski_distance.d ./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_kulsinski_distance.o ./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_kulsinski_distance.su ./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_minkowski_distance_f16.cyclo ./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_minkowski_distance_f16.d ./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_minkowski_distance_f16.o ./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_minkowski_distance_f16.su ./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_minkowski_distance_f32.cyclo ./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_minkowski_distance_f32.d ./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_minkowski_distance_f32.o ./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_minkowski_distance_f32.su ./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_rogerstanimoto_distance.cyclo ./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_rogerstanimoto_distance.d ./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_rogerstanimoto_distance.o ./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_rogerstanimoto_distance.su ./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_russellrao_distance.cyclo ./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_russellrao_distance.d ./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_russellrao_distance.o ./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_russellrao_distance.su ./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_sokalmichener_distance.cyclo ./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_sokalmichener_distance.d ./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_sokalmichener_distance.o ./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_sokalmichener_distance.su ./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_sokalsneath_distance.cyclo ./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_sokalsneath_distance.d ./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_sokalsneath_distance.o ./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_sokalsneath_distance.su ./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_yule_distance.cyclo ./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_yule_distance.d ./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_yule_distance.o ./CMSIS-DSP-1.17.1/Source/DistanceFunctions/arm_yule_distance.su

.PHONY: clean-CMSIS-2d-DSP-2d-1-2e-17-2e-1-2f-Source-2f-DistanceFunctions

