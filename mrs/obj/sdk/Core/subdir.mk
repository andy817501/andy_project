################################################################################
# ×Ô¶¯Éú³ÉµÄÎÄ¼þ¡£²»Òª±à¼­£¡
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
E:/Çßºã/Àý³Ì/Example/libraries/sdk/Core/core_riscv.c 

OBJS += \
./sdk/Core/core_riscv.o 

C_DEPS += \
./sdk/Core/core_riscv.d 


# Each subdirectory must supply rules for building sources it contributes
sdk/Core/core_riscv.o: E:/Çßºã/Àý³Ì/Example/libraries/sdk/Core/core_riscv.c
	@	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"E:\Çßºã\Àý³Ì\Example\Libraries\doc" -I"E:\Çßºã\Àý³Ì\Example\libraries\sdk\Core" -I"E:\Çßºã\Àý³Ì\Example\libraries\sdk\Ld" -I"E:\Çßºã\Àý³Ì\Example\libraries\sdk\Peripheral" -I"E:\Çßºã\Àý³Ì\Example\libraries\sdk\Startup" -I"E:\Çßºã\Àý³Ì\Example\5.20£¬test\user\inc" -I"E:\Çßºã\Àý³Ì\Example\libraries\zf_common" -I"E:\Çßºã\Àý³Ì\Example\libraries\zf_device" -I"E:\Çßºã\Àý³Ì\Example\5.20£¬test\code" -I"E:\Çßºã\Àý³Ì\Example\libraries\zf_driver" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@

