################################################################################
# ×Ô¶¯Éú³ÉµÄÎÄ¼þ¡£²»Òª±à¼­£¡
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
E:/Çßºã/Àý³Ì/Example/libraries/zf_driver/zf_driver_adc.c \
E:/Çßºã/Àý³Ì/Example/libraries/zf_driver/zf_driver_delay.c \
E:/Çßºã/Àý³Ì/Example/libraries/zf_driver/zf_driver_dvp.c \
E:/Çßºã/Àý³Ì/Example/libraries/zf_driver/zf_driver_encoder.c \
E:/Çßºã/Àý³Ì/Example/libraries/zf_driver/zf_driver_exti.c \
E:/Çßºã/Àý³Ì/Example/libraries/zf_driver/zf_driver_flash.c \
E:/Çßºã/Àý³Ì/Example/libraries/zf_driver/zf_driver_gpio.c \
E:/Çßºã/Àý³Ì/Example/libraries/zf_driver/zf_driver_pit.c \
E:/Çßºã/Àý³Ì/Example/libraries/zf_driver/zf_driver_pwm.c \
E:/Çßºã/Àý³Ì/Example/libraries/zf_driver/zf_driver_soft_iic.c \
E:/Çßºã/Àý³Ì/Example/libraries/zf_driver/zf_driver_spi.c \
E:/Çßºã/Àý³Ì/Example/libraries/zf_driver/zf_driver_timer.c \
E:/Çßºã/Àý³Ì/Example/libraries/zf_driver/zf_driver_uart.c \
E:/Çßºã/Àý³Ì/Example/libraries/zf_driver/zf_driver_usb_cdc.c 

S_UPPER_SRCS += \
E:/Çßºã/Àý³Ì/Example/libraries/zf_driver/zf_driver_irq.S 

OBJS += \
./zf_driver/zf_driver_adc.o \
./zf_driver/zf_driver_delay.o \
./zf_driver/zf_driver_dvp.o \
./zf_driver/zf_driver_encoder.o \
./zf_driver/zf_driver_exti.o \
./zf_driver/zf_driver_flash.o \
./zf_driver/zf_driver_gpio.o \
./zf_driver/zf_driver_irq.o \
./zf_driver/zf_driver_pit.o \
./zf_driver/zf_driver_pwm.o \
./zf_driver/zf_driver_soft_iic.o \
./zf_driver/zf_driver_spi.o \
./zf_driver/zf_driver_timer.o \
./zf_driver/zf_driver_uart.o \
./zf_driver/zf_driver_usb_cdc.o 

S_UPPER_DEPS += \
./zf_driver/zf_driver_irq.d 

C_DEPS += \
./zf_driver/zf_driver_adc.d \
./zf_driver/zf_driver_delay.d \
./zf_driver/zf_driver_dvp.d \
./zf_driver/zf_driver_encoder.d \
./zf_driver/zf_driver_exti.d \
./zf_driver/zf_driver_flash.d \
./zf_driver/zf_driver_gpio.d \
./zf_driver/zf_driver_pit.d \
./zf_driver/zf_driver_pwm.d \
./zf_driver/zf_driver_soft_iic.d \
./zf_driver/zf_driver_spi.d \
./zf_driver/zf_driver_timer.d \
./zf_driver/zf_driver_uart.d \
./zf_driver/zf_driver_usb_cdc.d 


# Each subdirectory must supply rules for building sources it contributes
zf_driver/zf_driver_adc.o: E:/Çßºã/Àý³Ì/Example/libraries/zf_driver/zf_driver_adc.c
	@	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"E:\Çßºã\Àý³Ì\Example\Libraries\doc" -I"E:\Çßºã\Àý³Ì\Example\libraries\sdk\Core" -I"E:\Çßºã\Àý³Ì\Example\libraries\sdk\Ld" -I"E:\Çßºã\Àý³Ì\Example\libraries\sdk\Peripheral" -I"E:\Çßºã\Àý³Ì\Example\libraries\sdk\Startup" -I"E:\Çßºã\Àý³Ì\Example\5.20£¬test\user\inc" -I"E:\Çßºã\Àý³Ì\Example\libraries\zf_common" -I"E:\Çßºã\Àý³Ì\Example\libraries\zf_device" -I"E:\Çßºã\Àý³Ì\Example\5.20£¬test\code" -I"E:\Çßºã\Àý³Ì\Example\libraries\zf_driver" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
zf_driver/zf_driver_delay.o: E:/Çßºã/Àý³Ì/Example/libraries/zf_driver/zf_driver_delay.c
	@	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"E:\Çßºã\Àý³Ì\Example\Libraries\doc" -I"E:\Çßºã\Àý³Ì\Example\libraries\sdk\Core" -I"E:\Çßºã\Àý³Ì\Example\libraries\sdk\Ld" -I"E:\Çßºã\Àý³Ì\Example\libraries\sdk\Peripheral" -I"E:\Çßºã\Àý³Ì\Example\libraries\sdk\Startup" -I"E:\Çßºã\Àý³Ì\Example\5.20£¬test\user\inc" -I"E:\Çßºã\Àý³Ì\Example\libraries\zf_common" -I"E:\Çßºã\Àý³Ì\Example\libraries\zf_device" -I"E:\Çßºã\Àý³Ì\Example\5.20£¬test\code" -I"E:\Çßºã\Àý³Ì\Example\libraries\zf_driver" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
zf_driver/zf_driver_dvp.o: E:/Çßºã/Àý³Ì/Example/libraries/zf_driver/zf_driver_dvp.c
	@	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"E:\Çßºã\Àý³Ì\Example\Libraries\doc" -I"E:\Çßºã\Àý³Ì\Example\libraries\sdk\Core" -I"E:\Çßºã\Àý³Ì\Example\libraries\sdk\Ld" -I"E:\Çßºã\Àý³Ì\Example\libraries\sdk\Peripheral" -I"E:\Çßºã\Àý³Ì\Example\libraries\sdk\Startup" -I"E:\Çßºã\Àý³Ì\Example\5.20£¬test\user\inc" -I"E:\Çßºã\Àý³Ì\Example\libraries\zf_common" -I"E:\Çßºã\Àý³Ì\Example\libraries\zf_device" -I"E:\Çßºã\Àý³Ì\Example\5.20£¬test\code" -I"E:\Çßºã\Àý³Ì\Example\libraries\zf_driver" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
zf_driver/zf_driver_encoder.o: E:/Çßºã/Àý³Ì/Example/libraries/zf_driver/zf_driver_encoder.c
	@	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"E:\Çßºã\Àý³Ì\Example\Libraries\doc" -I"E:\Çßºã\Àý³Ì\Example\libraries\sdk\Core" -I"E:\Çßºã\Àý³Ì\Example\libraries\sdk\Ld" -I"E:\Çßºã\Àý³Ì\Example\libraries\sdk\Peripheral" -I"E:\Çßºã\Àý³Ì\Example\libraries\sdk\Startup" -I"E:\Çßºã\Àý³Ì\Example\5.20£¬test\user\inc" -I"E:\Çßºã\Àý³Ì\Example\libraries\zf_common" -I"E:\Çßºã\Àý³Ì\Example\libraries\zf_device" -I"E:\Çßºã\Àý³Ì\Example\5.20£¬test\code" -I"E:\Çßºã\Àý³Ì\Example\libraries\zf_driver" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
zf_driver/zf_driver_exti.o: E:/Çßºã/Àý³Ì/Example/libraries/zf_driver/zf_driver_exti.c
	@	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"E:\Çßºã\Àý³Ì\Example\Libraries\doc" -I"E:\Çßºã\Àý³Ì\Example\libraries\sdk\Core" -I"E:\Çßºã\Àý³Ì\Example\libraries\sdk\Ld" -I"E:\Çßºã\Àý³Ì\Example\libraries\sdk\Peripheral" -I"E:\Çßºã\Àý³Ì\Example\libraries\sdk\Startup" -I"E:\Çßºã\Àý³Ì\Example\5.20£¬test\user\inc" -I"E:\Çßºã\Àý³Ì\Example\libraries\zf_common" -I"E:\Çßºã\Àý³Ì\Example\libraries\zf_device" -I"E:\Çßºã\Àý³Ì\Example\5.20£¬test\code" -I"E:\Çßºã\Àý³Ì\Example\libraries\zf_driver" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
zf_driver/zf_driver_flash.o: E:/Çßºã/Àý³Ì/Example/libraries/zf_driver/zf_driver_flash.c
	@	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"E:\Çßºã\Àý³Ì\Example\Libraries\doc" -I"E:\Çßºã\Àý³Ì\Example\libraries\sdk\Core" -I"E:\Çßºã\Àý³Ì\Example\libraries\sdk\Ld" -I"E:\Çßºã\Àý³Ì\Example\libraries\sdk\Peripheral" -I"E:\Çßºã\Àý³Ì\Example\libraries\sdk\Startup" -I"E:\Çßºã\Àý³Ì\Example\5.20£¬test\user\inc" -I"E:\Çßºã\Àý³Ì\Example\libraries\zf_common" -I"E:\Çßºã\Àý³Ì\Example\libraries\zf_device" -I"E:\Çßºã\Àý³Ì\Example\5.20£¬test\code" -I"E:\Çßºã\Àý³Ì\Example\libraries\zf_driver" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
zf_driver/zf_driver_gpio.o: E:/Çßºã/Àý³Ì/Example/libraries/zf_driver/zf_driver_gpio.c
	@	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"E:\Çßºã\Àý³Ì\Example\Libraries\doc" -I"E:\Çßºã\Àý³Ì\Example\libraries\sdk\Core" -I"E:\Çßºã\Àý³Ì\Example\libraries\sdk\Ld" -I"E:\Çßºã\Àý³Ì\Example\libraries\sdk\Peripheral" -I"E:\Çßºã\Àý³Ì\Example\libraries\sdk\Startup" -I"E:\Çßºã\Àý³Ì\Example\5.20£¬test\user\inc" -I"E:\Çßºã\Àý³Ì\Example\libraries\zf_common" -I"E:\Çßºã\Àý³Ì\Example\libraries\zf_device" -I"E:\Çßºã\Àý³Ì\Example\5.20£¬test\code" -I"E:\Çßºã\Àý³Ì\Example\libraries\zf_driver" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
zf_driver/zf_driver_irq.o: E:/Çßºã/Àý³Ì/Example/libraries/zf_driver/zf_driver_irq.S
	@	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -x assembler -I"E:\Çßºã\Àý³Ì\Example\Andy-project\code" -I"E:\Çßºã\Àý³Ì\Example\libraries\sdk\Startup" -I"E:\Çßºã\Àý³Ì\Example\libraries\zf_driver" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
zf_driver/zf_driver_pit.o: E:/Çßºã/Àý³Ì/Example/libraries/zf_driver/zf_driver_pit.c
	@	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"E:\Çßºã\Àý³Ì\Example\Libraries\doc" -I"E:\Çßºã\Àý³Ì\Example\libraries\sdk\Core" -I"E:\Çßºã\Àý³Ì\Example\libraries\sdk\Ld" -I"E:\Çßºã\Àý³Ì\Example\libraries\sdk\Peripheral" -I"E:\Çßºã\Àý³Ì\Example\libraries\sdk\Startup" -I"E:\Çßºã\Àý³Ì\Example\5.20£¬test\user\inc" -I"E:\Çßºã\Àý³Ì\Example\libraries\zf_common" -I"E:\Çßºã\Àý³Ì\Example\libraries\zf_device" -I"E:\Çßºã\Àý³Ì\Example\5.20£¬test\code" -I"E:\Çßºã\Àý³Ì\Example\libraries\zf_driver" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
zf_driver/zf_driver_pwm.o: E:/Çßºã/Àý³Ì/Example/libraries/zf_driver/zf_driver_pwm.c
	@	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"E:\Çßºã\Àý³Ì\Example\Libraries\doc" -I"E:\Çßºã\Àý³Ì\Example\libraries\sdk\Core" -I"E:\Çßºã\Àý³Ì\Example\libraries\sdk\Ld" -I"E:\Çßºã\Àý³Ì\Example\libraries\sdk\Peripheral" -I"E:\Çßºã\Àý³Ì\Example\libraries\sdk\Startup" -I"E:\Çßºã\Àý³Ì\Example\5.20£¬test\user\inc" -I"E:\Çßºã\Àý³Ì\Example\libraries\zf_common" -I"E:\Çßºã\Àý³Ì\Example\libraries\zf_device" -I"E:\Çßºã\Àý³Ì\Example\5.20£¬test\code" -I"E:\Çßºã\Àý³Ì\Example\libraries\zf_driver" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
zf_driver/zf_driver_soft_iic.o: E:/Çßºã/Àý³Ì/Example/libraries/zf_driver/zf_driver_soft_iic.c
	@	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"E:\Çßºã\Àý³Ì\Example\Libraries\doc" -I"E:\Çßºã\Àý³Ì\Example\libraries\sdk\Core" -I"E:\Çßºã\Àý³Ì\Example\libraries\sdk\Ld" -I"E:\Çßºã\Àý³Ì\Example\libraries\sdk\Peripheral" -I"E:\Çßºã\Àý³Ì\Example\libraries\sdk\Startup" -I"E:\Çßºã\Àý³Ì\Example\5.20£¬test\user\inc" -I"E:\Çßºã\Àý³Ì\Example\libraries\zf_common" -I"E:\Çßºã\Àý³Ì\Example\libraries\zf_device" -I"E:\Çßºã\Àý³Ì\Example\5.20£¬test\code" -I"E:\Çßºã\Àý³Ì\Example\libraries\zf_driver" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
zf_driver/zf_driver_spi.o: E:/Çßºã/Àý³Ì/Example/libraries/zf_driver/zf_driver_spi.c
	@	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"E:\Çßºã\Àý³Ì\Example\Libraries\doc" -I"E:\Çßºã\Àý³Ì\Example\libraries\sdk\Core" -I"E:\Çßºã\Àý³Ì\Example\libraries\sdk\Ld" -I"E:\Çßºã\Àý³Ì\Example\libraries\sdk\Peripheral" -I"E:\Çßºã\Àý³Ì\Example\libraries\sdk\Startup" -I"E:\Çßºã\Àý³Ì\Example\5.20£¬test\user\inc" -I"E:\Çßºã\Àý³Ì\Example\libraries\zf_common" -I"E:\Çßºã\Àý³Ì\Example\libraries\zf_device" -I"E:\Çßºã\Àý³Ì\Example\5.20£¬test\code" -I"E:\Çßºã\Àý³Ì\Example\libraries\zf_driver" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
zf_driver/zf_driver_timer.o: E:/Çßºã/Àý³Ì/Example/libraries/zf_driver/zf_driver_timer.c
	@	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"E:\Çßºã\Àý³Ì\Example\Libraries\doc" -I"E:\Çßºã\Àý³Ì\Example\libraries\sdk\Core" -I"E:\Çßºã\Àý³Ì\Example\libraries\sdk\Ld" -I"E:\Çßºã\Àý³Ì\Example\libraries\sdk\Peripheral" -I"E:\Çßºã\Àý³Ì\Example\libraries\sdk\Startup" -I"E:\Çßºã\Àý³Ì\Example\5.20£¬test\user\inc" -I"E:\Çßºã\Àý³Ì\Example\libraries\zf_common" -I"E:\Çßºã\Àý³Ì\Example\libraries\zf_device" -I"E:\Çßºã\Àý³Ì\Example\5.20£¬test\code" -I"E:\Çßºã\Àý³Ì\Example\libraries\zf_driver" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
zf_driver/zf_driver_uart.o: E:/Çßºã/Àý³Ì/Example/libraries/zf_driver/zf_driver_uart.c
	@	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"E:\Çßºã\Àý³Ì\Example\Libraries\doc" -I"E:\Çßºã\Àý³Ì\Example\libraries\sdk\Core" -I"E:\Çßºã\Àý³Ì\Example\libraries\sdk\Ld" -I"E:\Çßºã\Àý³Ì\Example\libraries\sdk\Peripheral" -I"E:\Çßºã\Àý³Ì\Example\libraries\sdk\Startup" -I"E:\Çßºã\Àý³Ì\Example\5.20£¬test\user\inc" -I"E:\Çßºã\Àý³Ì\Example\libraries\zf_common" -I"E:\Çßºã\Àý³Ì\Example\libraries\zf_device" -I"E:\Çßºã\Àý³Ì\Example\5.20£¬test\code" -I"E:\Çßºã\Àý³Ì\Example\libraries\zf_driver" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
zf_driver/zf_driver_usb_cdc.o: E:/Çßºã/Àý³Ì/Example/libraries/zf_driver/zf_driver_usb_cdc.c
	@	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"E:\Çßºã\Àý³Ì\Example\Libraries\doc" -I"E:\Çßºã\Àý³Ì\Example\libraries\sdk\Core" -I"E:\Çßºã\Àý³Ì\Example\libraries\sdk\Ld" -I"E:\Çßºã\Àý³Ì\Example\libraries\sdk\Peripheral" -I"E:\Çßºã\Àý³Ì\Example\libraries\sdk\Startup" -I"E:\Çßºã\Àý³Ì\Example\5.20£¬test\user\inc" -I"E:\Çßºã\Àý³Ì\Example\libraries\zf_common" -I"E:\Çßºã\Àý³Ì\Example\libraries\zf_device" -I"E:\Çßºã\Àý³Ì\Example\5.20£¬test\code" -I"E:\Çßºã\Àý³Ì\Example\libraries\zf_driver" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@

