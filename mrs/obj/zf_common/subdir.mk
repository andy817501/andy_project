################################################################################
# ×Ô¶¯Éú³ÉµÄÎÄ¼þ¡£²»Òª±à¼­£¡
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
E:/Çßºã/Àý³Ì/Example/libraries/zf_common/zf_common_clock.c \
E:/Çßºã/Àý³Ì/Example/libraries/zf_common/zf_common_debug.c \
E:/Çßºã/Àý³Ì/Example/libraries/zf_common/zf_common_fifo.c \
E:/Çßºã/Àý³Ì/Example/libraries/zf_common/zf_common_font.c \
E:/Çßºã/Àý³Ì/Example/libraries/zf_common/zf_common_function.c \
E:/Çßºã/Àý³Ì/Example/libraries/zf_common/zf_common_interrupt.c 

OBJS += \
./zf_common/zf_common_clock.o \
./zf_common/zf_common_debug.o \
./zf_common/zf_common_fifo.o \
./zf_common/zf_common_font.o \
./zf_common/zf_common_function.o \
./zf_common/zf_common_interrupt.o 

C_DEPS += \
./zf_common/zf_common_clock.d \
./zf_common/zf_common_debug.d \
./zf_common/zf_common_fifo.d \
./zf_common/zf_common_font.d \
./zf_common/zf_common_function.d \
./zf_common/zf_common_interrupt.d 


# Each subdirectory must supply rules for building sources it contributes
zf_common/zf_common_clock.o: E:/Çßºã/Àý³Ì/Example/libraries/zf_common/zf_common_clock.c
	@	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"E:\Çßºã\Àý³Ì\Example\Libraries\doc" -I"E:\Çßºã\Àý³Ì\Example\libraries\sdk\Core" -I"E:\Çßºã\Àý³Ì\Example\libraries\sdk\Ld" -I"E:\Çßºã\Àý³Ì\Example\libraries\sdk\Peripheral" -I"E:\Çßºã\Àý³Ì\Example\libraries\sdk\Startup" -I"E:\Çßºã\Àý³Ì\Example\5.20£¬test\user\inc" -I"E:\Çßºã\Àý³Ì\Example\libraries\zf_common" -I"E:\Çßºã\Àý³Ì\Example\libraries\zf_device" -I"E:\Çßºã\Àý³Ì\Example\5.20£¬test\code" -I"E:\Çßºã\Àý³Ì\Example\libraries\zf_driver" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
zf_common/zf_common_debug.o: E:/Çßºã/Àý³Ì/Example/libraries/zf_common/zf_common_debug.c
	@	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"E:\Çßºã\Àý³Ì\Example\Libraries\doc" -I"E:\Çßºã\Àý³Ì\Example\libraries\sdk\Core" -I"E:\Çßºã\Àý³Ì\Example\libraries\sdk\Ld" -I"E:\Çßºã\Àý³Ì\Example\libraries\sdk\Peripheral" -I"E:\Çßºã\Àý³Ì\Example\libraries\sdk\Startup" -I"E:\Çßºã\Àý³Ì\Example\5.20£¬test\user\inc" -I"E:\Çßºã\Àý³Ì\Example\libraries\zf_common" -I"E:\Çßºã\Àý³Ì\Example\libraries\zf_device" -I"E:\Çßºã\Àý³Ì\Example\5.20£¬test\code" -I"E:\Çßºã\Àý³Ì\Example\libraries\zf_driver" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
zf_common/zf_common_fifo.o: E:/Çßºã/Àý³Ì/Example/libraries/zf_common/zf_common_fifo.c
	@	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"E:\Çßºã\Àý³Ì\Example\Libraries\doc" -I"E:\Çßºã\Àý³Ì\Example\libraries\sdk\Core" -I"E:\Çßºã\Àý³Ì\Example\libraries\sdk\Ld" -I"E:\Çßºã\Àý³Ì\Example\libraries\sdk\Peripheral" -I"E:\Çßºã\Àý³Ì\Example\libraries\sdk\Startup" -I"E:\Çßºã\Àý³Ì\Example\5.20£¬test\user\inc" -I"E:\Çßºã\Àý³Ì\Example\libraries\zf_common" -I"E:\Çßºã\Àý³Ì\Example\libraries\zf_device" -I"E:\Çßºã\Àý³Ì\Example\5.20£¬test\code" -I"E:\Çßºã\Àý³Ì\Example\libraries\zf_driver" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
zf_common/zf_common_font.o: E:/Çßºã/Àý³Ì/Example/libraries/zf_common/zf_common_font.c
	@	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"E:\Çßºã\Àý³Ì\Example\Libraries\doc" -I"E:\Çßºã\Àý³Ì\Example\libraries\sdk\Core" -I"E:\Çßºã\Àý³Ì\Example\libraries\sdk\Ld" -I"E:\Çßºã\Àý³Ì\Example\libraries\sdk\Peripheral" -I"E:\Çßºã\Àý³Ì\Example\libraries\sdk\Startup" -I"E:\Çßºã\Àý³Ì\Example\5.20£¬test\user\inc" -I"E:\Çßºã\Àý³Ì\Example\libraries\zf_common" -I"E:\Çßºã\Àý³Ì\Example\libraries\zf_device" -I"E:\Çßºã\Àý³Ì\Example\5.20£¬test\code" -I"E:\Çßºã\Àý³Ì\Example\libraries\zf_driver" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
zf_common/zf_common_function.o: E:/Çßºã/Àý³Ì/Example/libraries/zf_common/zf_common_function.c
	@	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"E:\Çßºã\Àý³Ì\Example\Libraries\doc" -I"E:\Çßºã\Àý³Ì\Example\libraries\sdk\Core" -I"E:\Çßºã\Àý³Ì\Example\libraries\sdk\Ld" -I"E:\Çßºã\Àý³Ì\Example\libraries\sdk\Peripheral" -I"E:\Çßºã\Àý³Ì\Example\libraries\sdk\Startup" -I"E:\Çßºã\Àý³Ì\Example\5.20£¬test\user\inc" -I"E:\Çßºã\Àý³Ì\Example\libraries\zf_common" -I"E:\Çßºã\Àý³Ì\Example\libraries\zf_device" -I"E:\Çßºã\Àý³Ì\Example\5.20£¬test\code" -I"E:\Çßºã\Àý³Ì\Example\libraries\zf_driver" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
zf_common/zf_common_interrupt.o: E:/Çßºã/Àý³Ì/Example/libraries/zf_common/zf_common_interrupt.c
	@	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"E:\Çßºã\Àý³Ì\Example\Libraries\doc" -I"E:\Çßºã\Àý³Ì\Example\libraries\sdk\Core" -I"E:\Çßºã\Àý³Ì\Example\libraries\sdk\Ld" -I"E:\Çßºã\Àý³Ì\Example\libraries\sdk\Peripheral" -I"E:\Çßºã\Àý³Ì\Example\libraries\sdk\Startup" -I"E:\Çßºã\Àý³Ì\Example\5.20£¬test\user\inc" -I"E:\Çßºã\Àý³Ì\Example\libraries\zf_common" -I"E:\Çßºã\Àý³Ì\Example\libraries\zf_device" -I"E:\Çßºã\Àý³Ì\Example\5.20£¬test\code" -I"E:\Çßºã\Àý³Ì\Example\libraries\zf_driver" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@

