################################################################################
# �Զ����ɵ��ļ�����Ҫ�༭��
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
E:/�ߺ�/����/Example/libraries/sdk/Peripheral/ch32v30x_adc.c \
E:/�ߺ�/����/Example/libraries/sdk/Peripheral/ch32v30x_bkp.c \
E:/�ߺ�/����/Example/libraries/sdk/Peripheral/ch32v30x_can.c \
E:/�ߺ�/����/Example/libraries/sdk/Peripheral/ch32v30x_crc.c \
E:/�ߺ�/����/Example/libraries/sdk/Peripheral/ch32v30x_dac.c \
E:/�ߺ�/����/Example/libraries/sdk/Peripheral/ch32v30x_dbgmcu.c \
E:/�ߺ�/����/Example/libraries/sdk/Peripheral/ch32v30x_dma.c \
E:/�ߺ�/����/Example/libraries/sdk/Peripheral/ch32v30x_dvp.c \
E:/�ߺ�/����/Example/libraries/sdk/Peripheral/ch32v30x_eth.c \
E:/�ߺ�/����/Example/libraries/sdk/Peripheral/ch32v30x_exti.c \
E:/�ߺ�/����/Example/libraries/sdk/Peripheral/ch32v30x_flash.c \
E:/�ߺ�/����/Example/libraries/sdk/Peripheral/ch32v30x_fsmc.c \
E:/�ߺ�/����/Example/libraries/sdk/Peripheral/ch32v30x_gpio.c \
E:/�ߺ�/����/Example/libraries/sdk/Peripheral/ch32v30x_i2c.c \
E:/�ߺ�/����/Example/libraries/sdk/Peripheral/ch32v30x_iwdg.c \
E:/�ߺ�/����/Example/libraries/sdk/Peripheral/ch32v30x_misc.c \
E:/�ߺ�/����/Example/libraries/sdk/Peripheral/ch32v30x_opa.c \
E:/�ߺ�/����/Example/libraries/sdk/Peripheral/ch32v30x_pwr.c \
E:/�ߺ�/����/Example/libraries/sdk/Peripheral/ch32v30x_rcc.c \
E:/�ߺ�/����/Example/libraries/sdk/Peripheral/ch32v30x_rng.c \
E:/�ߺ�/����/Example/libraries/sdk/Peripheral/ch32v30x_rtc.c \
E:/�ߺ�/����/Example/libraries/sdk/Peripheral/ch32v30x_sdio.c \
E:/�ߺ�/����/Example/libraries/sdk/Peripheral/ch32v30x_spi.c \
E:/�ߺ�/����/Example/libraries/sdk/Peripheral/ch32v30x_tim.c \
E:/�ߺ�/����/Example/libraries/sdk/Peripheral/ch32v30x_usart.c \
E:/�ߺ�/����/Example/libraries/sdk/Peripheral/ch32v30x_usbotg_device.c \
E:/�ߺ�/����/Example/libraries/sdk/Peripheral/ch32v30x_wwdg.c 

OBJS += \
./sdk/Peripheral/ch32v30x_adc.o \
./sdk/Peripheral/ch32v30x_bkp.o \
./sdk/Peripheral/ch32v30x_can.o \
./sdk/Peripheral/ch32v30x_crc.o \
./sdk/Peripheral/ch32v30x_dac.o \
./sdk/Peripheral/ch32v30x_dbgmcu.o \
./sdk/Peripheral/ch32v30x_dma.o \
./sdk/Peripheral/ch32v30x_dvp.o \
./sdk/Peripheral/ch32v30x_eth.o \
./sdk/Peripheral/ch32v30x_exti.o \
./sdk/Peripheral/ch32v30x_flash.o \
./sdk/Peripheral/ch32v30x_fsmc.o \
./sdk/Peripheral/ch32v30x_gpio.o \
./sdk/Peripheral/ch32v30x_i2c.o \
./sdk/Peripheral/ch32v30x_iwdg.o \
./sdk/Peripheral/ch32v30x_misc.o \
./sdk/Peripheral/ch32v30x_opa.o \
./sdk/Peripheral/ch32v30x_pwr.o \
./sdk/Peripheral/ch32v30x_rcc.o \
./sdk/Peripheral/ch32v30x_rng.o \
./sdk/Peripheral/ch32v30x_rtc.o \
./sdk/Peripheral/ch32v30x_sdio.o \
./sdk/Peripheral/ch32v30x_spi.o \
./sdk/Peripheral/ch32v30x_tim.o \
./sdk/Peripheral/ch32v30x_usart.o \
./sdk/Peripheral/ch32v30x_usbotg_device.o \
./sdk/Peripheral/ch32v30x_wwdg.o 

C_DEPS += \
./sdk/Peripheral/ch32v30x_adc.d \
./sdk/Peripheral/ch32v30x_bkp.d \
./sdk/Peripheral/ch32v30x_can.d \
./sdk/Peripheral/ch32v30x_crc.d \
./sdk/Peripheral/ch32v30x_dac.d \
./sdk/Peripheral/ch32v30x_dbgmcu.d \
./sdk/Peripheral/ch32v30x_dma.d \
./sdk/Peripheral/ch32v30x_dvp.d \
./sdk/Peripheral/ch32v30x_eth.d \
./sdk/Peripheral/ch32v30x_exti.d \
./sdk/Peripheral/ch32v30x_flash.d \
./sdk/Peripheral/ch32v30x_fsmc.d \
./sdk/Peripheral/ch32v30x_gpio.d \
./sdk/Peripheral/ch32v30x_i2c.d \
./sdk/Peripheral/ch32v30x_iwdg.d \
./sdk/Peripheral/ch32v30x_misc.d \
./sdk/Peripheral/ch32v30x_opa.d \
./sdk/Peripheral/ch32v30x_pwr.d \
./sdk/Peripheral/ch32v30x_rcc.d \
./sdk/Peripheral/ch32v30x_rng.d \
./sdk/Peripheral/ch32v30x_rtc.d \
./sdk/Peripheral/ch32v30x_sdio.d \
./sdk/Peripheral/ch32v30x_spi.d \
./sdk/Peripheral/ch32v30x_tim.d \
./sdk/Peripheral/ch32v30x_usart.d \
./sdk/Peripheral/ch32v30x_usbotg_device.d \
./sdk/Peripheral/ch32v30x_wwdg.d 


# Each subdirectory must supply rules for building sources it contributes
sdk/Peripheral/ch32v30x_adc.o: E:/�ߺ�/����/Example/libraries/sdk/Peripheral/ch32v30x_adc.c
	@	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"E:\�ߺ�\����\Example\Libraries\doc" -I"E:\�ߺ�\����\Example\libraries\sdk\Core" -I"E:\�ߺ�\����\Example\libraries\sdk\Ld" -I"E:\�ߺ�\����\Example\libraries\sdk\Peripheral" -I"E:\�ߺ�\����\Example\libraries\sdk\Startup" -I"E:\�ߺ�\����\Example\5.20��test\user\inc" -I"E:\�ߺ�\����\Example\libraries\zf_common" -I"E:\�ߺ�\����\Example\libraries\zf_device" -I"E:\�ߺ�\����\Example\5.20��test\code" -I"E:\�ߺ�\����\Example\libraries\zf_driver" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
sdk/Peripheral/ch32v30x_bkp.o: E:/�ߺ�/����/Example/libraries/sdk/Peripheral/ch32v30x_bkp.c
	@	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"E:\�ߺ�\����\Example\Libraries\doc" -I"E:\�ߺ�\����\Example\libraries\sdk\Core" -I"E:\�ߺ�\����\Example\libraries\sdk\Ld" -I"E:\�ߺ�\����\Example\libraries\sdk\Peripheral" -I"E:\�ߺ�\����\Example\libraries\sdk\Startup" -I"E:\�ߺ�\����\Example\5.20��test\user\inc" -I"E:\�ߺ�\����\Example\libraries\zf_common" -I"E:\�ߺ�\����\Example\libraries\zf_device" -I"E:\�ߺ�\����\Example\5.20��test\code" -I"E:\�ߺ�\����\Example\libraries\zf_driver" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
sdk/Peripheral/ch32v30x_can.o: E:/�ߺ�/����/Example/libraries/sdk/Peripheral/ch32v30x_can.c
	@	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"E:\�ߺ�\����\Example\Libraries\doc" -I"E:\�ߺ�\����\Example\libraries\sdk\Core" -I"E:\�ߺ�\����\Example\libraries\sdk\Ld" -I"E:\�ߺ�\����\Example\libraries\sdk\Peripheral" -I"E:\�ߺ�\����\Example\libraries\sdk\Startup" -I"E:\�ߺ�\����\Example\5.20��test\user\inc" -I"E:\�ߺ�\����\Example\libraries\zf_common" -I"E:\�ߺ�\����\Example\libraries\zf_device" -I"E:\�ߺ�\����\Example\5.20��test\code" -I"E:\�ߺ�\����\Example\libraries\zf_driver" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
sdk/Peripheral/ch32v30x_crc.o: E:/�ߺ�/����/Example/libraries/sdk/Peripheral/ch32v30x_crc.c
	@	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"E:\�ߺ�\����\Example\Libraries\doc" -I"E:\�ߺ�\����\Example\libraries\sdk\Core" -I"E:\�ߺ�\����\Example\libraries\sdk\Ld" -I"E:\�ߺ�\����\Example\libraries\sdk\Peripheral" -I"E:\�ߺ�\����\Example\libraries\sdk\Startup" -I"E:\�ߺ�\����\Example\5.20��test\user\inc" -I"E:\�ߺ�\����\Example\libraries\zf_common" -I"E:\�ߺ�\����\Example\libraries\zf_device" -I"E:\�ߺ�\����\Example\5.20��test\code" -I"E:\�ߺ�\����\Example\libraries\zf_driver" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
sdk/Peripheral/ch32v30x_dac.o: E:/�ߺ�/����/Example/libraries/sdk/Peripheral/ch32v30x_dac.c
	@	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"E:\�ߺ�\����\Example\Libraries\doc" -I"E:\�ߺ�\����\Example\libraries\sdk\Core" -I"E:\�ߺ�\����\Example\libraries\sdk\Ld" -I"E:\�ߺ�\����\Example\libraries\sdk\Peripheral" -I"E:\�ߺ�\����\Example\libraries\sdk\Startup" -I"E:\�ߺ�\����\Example\5.20��test\user\inc" -I"E:\�ߺ�\����\Example\libraries\zf_common" -I"E:\�ߺ�\����\Example\libraries\zf_device" -I"E:\�ߺ�\����\Example\5.20��test\code" -I"E:\�ߺ�\����\Example\libraries\zf_driver" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
sdk/Peripheral/ch32v30x_dbgmcu.o: E:/�ߺ�/����/Example/libraries/sdk/Peripheral/ch32v30x_dbgmcu.c
	@	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"E:\�ߺ�\����\Example\Libraries\doc" -I"E:\�ߺ�\����\Example\libraries\sdk\Core" -I"E:\�ߺ�\����\Example\libraries\sdk\Ld" -I"E:\�ߺ�\����\Example\libraries\sdk\Peripheral" -I"E:\�ߺ�\����\Example\libraries\sdk\Startup" -I"E:\�ߺ�\����\Example\5.20��test\user\inc" -I"E:\�ߺ�\����\Example\libraries\zf_common" -I"E:\�ߺ�\����\Example\libraries\zf_device" -I"E:\�ߺ�\����\Example\5.20��test\code" -I"E:\�ߺ�\����\Example\libraries\zf_driver" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
sdk/Peripheral/ch32v30x_dma.o: E:/�ߺ�/����/Example/libraries/sdk/Peripheral/ch32v30x_dma.c
	@	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"E:\�ߺ�\����\Example\Libraries\doc" -I"E:\�ߺ�\����\Example\libraries\sdk\Core" -I"E:\�ߺ�\����\Example\libraries\sdk\Ld" -I"E:\�ߺ�\����\Example\libraries\sdk\Peripheral" -I"E:\�ߺ�\����\Example\libraries\sdk\Startup" -I"E:\�ߺ�\����\Example\5.20��test\user\inc" -I"E:\�ߺ�\����\Example\libraries\zf_common" -I"E:\�ߺ�\����\Example\libraries\zf_device" -I"E:\�ߺ�\����\Example\5.20��test\code" -I"E:\�ߺ�\����\Example\libraries\zf_driver" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
sdk/Peripheral/ch32v30x_dvp.o: E:/�ߺ�/����/Example/libraries/sdk/Peripheral/ch32v30x_dvp.c
	@	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"E:\�ߺ�\����\Example\Libraries\doc" -I"E:\�ߺ�\����\Example\libraries\sdk\Core" -I"E:\�ߺ�\����\Example\libraries\sdk\Ld" -I"E:\�ߺ�\����\Example\libraries\sdk\Peripheral" -I"E:\�ߺ�\����\Example\libraries\sdk\Startup" -I"E:\�ߺ�\����\Example\5.20��test\user\inc" -I"E:\�ߺ�\����\Example\libraries\zf_common" -I"E:\�ߺ�\����\Example\libraries\zf_device" -I"E:\�ߺ�\����\Example\5.20��test\code" -I"E:\�ߺ�\����\Example\libraries\zf_driver" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
sdk/Peripheral/ch32v30x_eth.o: E:/�ߺ�/����/Example/libraries/sdk/Peripheral/ch32v30x_eth.c
	@	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"E:\�ߺ�\����\Example\Libraries\doc" -I"E:\�ߺ�\����\Example\libraries\sdk\Core" -I"E:\�ߺ�\����\Example\libraries\sdk\Ld" -I"E:\�ߺ�\����\Example\libraries\sdk\Peripheral" -I"E:\�ߺ�\����\Example\libraries\sdk\Startup" -I"E:\�ߺ�\����\Example\5.20��test\user\inc" -I"E:\�ߺ�\����\Example\libraries\zf_common" -I"E:\�ߺ�\����\Example\libraries\zf_device" -I"E:\�ߺ�\����\Example\5.20��test\code" -I"E:\�ߺ�\����\Example\libraries\zf_driver" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
sdk/Peripheral/ch32v30x_exti.o: E:/�ߺ�/����/Example/libraries/sdk/Peripheral/ch32v30x_exti.c
	@	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"E:\�ߺ�\����\Example\Libraries\doc" -I"E:\�ߺ�\����\Example\libraries\sdk\Core" -I"E:\�ߺ�\����\Example\libraries\sdk\Ld" -I"E:\�ߺ�\����\Example\libraries\sdk\Peripheral" -I"E:\�ߺ�\����\Example\libraries\sdk\Startup" -I"E:\�ߺ�\����\Example\5.20��test\user\inc" -I"E:\�ߺ�\����\Example\libraries\zf_common" -I"E:\�ߺ�\����\Example\libraries\zf_device" -I"E:\�ߺ�\����\Example\5.20��test\code" -I"E:\�ߺ�\����\Example\libraries\zf_driver" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
sdk/Peripheral/ch32v30x_flash.o: E:/�ߺ�/����/Example/libraries/sdk/Peripheral/ch32v30x_flash.c
	@	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"E:\�ߺ�\����\Example\Libraries\doc" -I"E:\�ߺ�\����\Example\libraries\sdk\Core" -I"E:\�ߺ�\����\Example\libraries\sdk\Ld" -I"E:\�ߺ�\����\Example\libraries\sdk\Peripheral" -I"E:\�ߺ�\����\Example\libraries\sdk\Startup" -I"E:\�ߺ�\����\Example\5.20��test\user\inc" -I"E:\�ߺ�\����\Example\libraries\zf_common" -I"E:\�ߺ�\����\Example\libraries\zf_device" -I"E:\�ߺ�\����\Example\5.20��test\code" -I"E:\�ߺ�\����\Example\libraries\zf_driver" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
sdk/Peripheral/ch32v30x_fsmc.o: E:/�ߺ�/����/Example/libraries/sdk/Peripheral/ch32v30x_fsmc.c
	@	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"E:\�ߺ�\����\Example\Libraries\doc" -I"E:\�ߺ�\����\Example\libraries\sdk\Core" -I"E:\�ߺ�\����\Example\libraries\sdk\Ld" -I"E:\�ߺ�\����\Example\libraries\sdk\Peripheral" -I"E:\�ߺ�\����\Example\libraries\sdk\Startup" -I"E:\�ߺ�\����\Example\5.20��test\user\inc" -I"E:\�ߺ�\����\Example\libraries\zf_common" -I"E:\�ߺ�\����\Example\libraries\zf_device" -I"E:\�ߺ�\����\Example\5.20��test\code" -I"E:\�ߺ�\����\Example\libraries\zf_driver" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
sdk/Peripheral/ch32v30x_gpio.o: E:/�ߺ�/����/Example/libraries/sdk/Peripheral/ch32v30x_gpio.c
	@	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"E:\�ߺ�\����\Example\Libraries\doc" -I"E:\�ߺ�\����\Example\libraries\sdk\Core" -I"E:\�ߺ�\����\Example\libraries\sdk\Ld" -I"E:\�ߺ�\����\Example\libraries\sdk\Peripheral" -I"E:\�ߺ�\����\Example\libraries\sdk\Startup" -I"E:\�ߺ�\����\Example\5.20��test\user\inc" -I"E:\�ߺ�\����\Example\libraries\zf_common" -I"E:\�ߺ�\����\Example\libraries\zf_device" -I"E:\�ߺ�\����\Example\5.20��test\code" -I"E:\�ߺ�\����\Example\libraries\zf_driver" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
sdk/Peripheral/ch32v30x_i2c.o: E:/�ߺ�/����/Example/libraries/sdk/Peripheral/ch32v30x_i2c.c
	@	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"E:\�ߺ�\����\Example\Libraries\doc" -I"E:\�ߺ�\����\Example\libraries\sdk\Core" -I"E:\�ߺ�\����\Example\libraries\sdk\Ld" -I"E:\�ߺ�\����\Example\libraries\sdk\Peripheral" -I"E:\�ߺ�\����\Example\libraries\sdk\Startup" -I"E:\�ߺ�\����\Example\5.20��test\user\inc" -I"E:\�ߺ�\����\Example\libraries\zf_common" -I"E:\�ߺ�\����\Example\libraries\zf_device" -I"E:\�ߺ�\����\Example\5.20��test\code" -I"E:\�ߺ�\����\Example\libraries\zf_driver" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
sdk/Peripheral/ch32v30x_iwdg.o: E:/�ߺ�/����/Example/libraries/sdk/Peripheral/ch32v30x_iwdg.c
	@	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"E:\�ߺ�\����\Example\Libraries\doc" -I"E:\�ߺ�\����\Example\libraries\sdk\Core" -I"E:\�ߺ�\����\Example\libraries\sdk\Ld" -I"E:\�ߺ�\����\Example\libraries\sdk\Peripheral" -I"E:\�ߺ�\����\Example\libraries\sdk\Startup" -I"E:\�ߺ�\����\Example\5.20��test\user\inc" -I"E:\�ߺ�\����\Example\libraries\zf_common" -I"E:\�ߺ�\����\Example\libraries\zf_device" -I"E:\�ߺ�\����\Example\5.20��test\code" -I"E:\�ߺ�\����\Example\libraries\zf_driver" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
sdk/Peripheral/ch32v30x_misc.o: E:/�ߺ�/����/Example/libraries/sdk/Peripheral/ch32v30x_misc.c
	@	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"E:\�ߺ�\����\Example\Libraries\doc" -I"E:\�ߺ�\����\Example\libraries\sdk\Core" -I"E:\�ߺ�\����\Example\libraries\sdk\Ld" -I"E:\�ߺ�\����\Example\libraries\sdk\Peripheral" -I"E:\�ߺ�\����\Example\libraries\sdk\Startup" -I"E:\�ߺ�\����\Example\5.20��test\user\inc" -I"E:\�ߺ�\����\Example\libraries\zf_common" -I"E:\�ߺ�\����\Example\libraries\zf_device" -I"E:\�ߺ�\����\Example\5.20��test\code" -I"E:\�ߺ�\����\Example\libraries\zf_driver" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
sdk/Peripheral/ch32v30x_opa.o: E:/�ߺ�/����/Example/libraries/sdk/Peripheral/ch32v30x_opa.c
	@	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"E:\�ߺ�\����\Example\Libraries\doc" -I"E:\�ߺ�\����\Example\libraries\sdk\Core" -I"E:\�ߺ�\����\Example\libraries\sdk\Ld" -I"E:\�ߺ�\����\Example\libraries\sdk\Peripheral" -I"E:\�ߺ�\����\Example\libraries\sdk\Startup" -I"E:\�ߺ�\����\Example\5.20��test\user\inc" -I"E:\�ߺ�\����\Example\libraries\zf_common" -I"E:\�ߺ�\����\Example\libraries\zf_device" -I"E:\�ߺ�\����\Example\5.20��test\code" -I"E:\�ߺ�\����\Example\libraries\zf_driver" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
sdk/Peripheral/ch32v30x_pwr.o: E:/�ߺ�/����/Example/libraries/sdk/Peripheral/ch32v30x_pwr.c
	@	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"E:\�ߺ�\����\Example\Libraries\doc" -I"E:\�ߺ�\����\Example\libraries\sdk\Core" -I"E:\�ߺ�\����\Example\libraries\sdk\Ld" -I"E:\�ߺ�\����\Example\libraries\sdk\Peripheral" -I"E:\�ߺ�\����\Example\libraries\sdk\Startup" -I"E:\�ߺ�\����\Example\5.20��test\user\inc" -I"E:\�ߺ�\����\Example\libraries\zf_common" -I"E:\�ߺ�\����\Example\libraries\zf_device" -I"E:\�ߺ�\����\Example\5.20��test\code" -I"E:\�ߺ�\����\Example\libraries\zf_driver" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
sdk/Peripheral/ch32v30x_rcc.o: E:/�ߺ�/����/Example/libraries/sdk/Peripheral/ch32v30x_rcc.c
	@	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"E:\�ߺ�\����\Example\Libraries\doc" -I"E:\�ߺ�\����\Example\libraries\sdk\Core" -I"E:\�ߺ�\����\Example\libraries\sdk\Ld" -I"E:\�ߺ�\����\Example\libraries\sdk\Peripheral" -I"E:\�ߺ�\����\Example\libraries\sdk\Startup" -I"E:\�ߺ�\����\Example\5.20��test\user\inc" -I"E:\�ߺ�\����\Example\libraries\zf_common" -I"E:\�ߺ�\����\Example\libraries\zf_device" -I"E:\�ߺ�\����\Example\5.20��test\code" -I"E:\�ߺ�\����\Example\libraries\zf_driver" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
sdk/Peripheral/ch32v30x_rng.o: E:/�ߺ�/����/Example/libraries/sdk/Peripheral/ch32v30x_rng.c
	@	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"E:\�ߺ�\����\Example\Libraries\doc" -I"E:\�ߺ�\����\Example\libraries\sdk\Core" -I"E:\�ߺ�\����\Example\libraries\sdk\Ld" -I"E:\�ߺ�\����\Example\libraries\sdk\Peripheral" -I"E:\�ߺ�\����\Example\libraries\sdk\Startup" -I"E:\�ߺ�\����\Example\5.20��test\user\inc" -I"E:\�ߺ�\����\Example\libraries\zf_common" -I"E:\�ߺ�\����\Example\libraries\zf_device" -I"E:\�ߺ�\����\Example\5.20��test\code" -I"E:\�ߺ�\����\Example\libraries\zf_driver" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
sdk/Peripheral/ch32v30x_rtc.o: E:/�ߺ�/����/Example/libraries/sdk/Peripheral/ch32v30x_rtc.c
	@	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"E:\�ߺ�\����\Example\Libraries\doc" -I"E:\�ߺ�\����\Example\libraries\sdk\Core" -I"E:\�ߺ�\����\Example\libraries\sdk\Ld" -I"E:\�ߺ�\����\Example\libraries\sdk\Peripheral" -I"E:\�ߺ�\����\Example\libraries\sdk\Startup" -I"E:\�ߺ�\����\Example\5.20��test\user\inc" -I"E:\�ߺ�\����\Example\libraries\zf_common" -I"E:\�ߺ�\����\Example\libraries\zf_device" -I"E:\�ߺ�\����\Example\5.20��test\code" -I"E:\�ߺ�\����\Example\libraries\zf_driver" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
sdk/Peripheral/ch32v30x_sdio.o: E:/�ߺ�/����/Example/libraries/sdk/Peripheral/ch32v30x_sdio.c
	@	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"E:\�ߺ�\����\Example\Libraries\doc" -I"E:\�ߺ�\����\Example\libraries\sdk\Core" -I"E:\�ߺ�\����\Example\libraries\sdk\Ld" -I"E:\�ߺ�\����\Example\libraries\sdk\Peripheral" -I"E:\�ߺ�\����\Example\libraries\sdk\Startup" -I"E:\�ߺ�\����\Example\5.20��test\user\inc" -I"E:\�ߺ�\����\Example\libraries\zf_common" -I"E:\�ߺ�\����\Example\libraries\zf_device" -I"E:\�ߺ�\����\Example\5.20��test\code" -I"E:\�ߺ�\����\Example\libraries\zf_driver" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
sdk/Peripheral/ch32v30x_spi.o: E:/�ߺ�/����/Example/libraries/sdk/Peripheral/ch32v30x_spi.c
	@	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"E:\�ߺ�\����\Example\Libraries\doc" -I"E:\�ߺ�\����\Example\libraries\sdk\Core" -I"E:\�ߺ�\����\Example\libraries\sdk\Ld" -I"E:\�ߺ�\����\Example\libraries\sdk\Peripheral" -I"E:\�ߺ�\����\Example\libraries\sdk\Startup" -I"E:\�ߺ�\����\Example\5.20��test\user\inc" -I"E:\�ߺ�\����\Example\libraries\zf_common" -I"E:\�ߺ�\����\Example\libraries\zf_device" -I"E:\�ߺ�\����\Example\5.20��test\code" -I"E:\�ߺ�\����\Example\libraries\zf_driver" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
sdk/Peripheral/ch32v30x_tim.o: E:/�ߺ�/����/Example/libraries/sdk/Peripheral/ch32v30x_tim.c
	@	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"E:\�ߺ�\����\Example\Libraries\doc" -I"E:\�ߺ�\����\Example\libraries\sdk\Core" -I"E:\�ߺ�\����\Example\libraries\sdk\Ld" -I"E:\�ߺ�\����\Example\libraries\sdk\Peripheral" -I"E:\�ߺ�\����\Example\libraries\sdk\Startup" -I"E:\�ߺ�\����\Example\5.20��test\user\inc" -I"E:\�ߺ�\����\Example\libraries\zf_common" -I"E:\�ߺ�\����\Example\libraries\zf_device" -I"E:\�ߺ�\����\Example\5.20��test\code" -I"E:\�ߺ�\����\Example\libraries\zf_driver" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
sdk/Peripheral/ch32v30x_usart.o: E:/�ߺ�/����/Example/libraries/sdk/Peripheral/ch32v30x_usart.c
	@	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"E:\�ߺ�\����\Example\Libraries\doc" -I"E:\�ߺ�\����\Example\libraries\sdk\Core" -I"E:\�ߺ�\����\Example\libraries\sdk\Ld" -I"E:\�ߺ�\����\Example\libraries\sdk\Peripheral" -I"E:\�ߺ�\����\Example\libraries\sdk\Startup" -I"E:\�ߺ�\����\Example\5.20��test\user\inc" -I"E:\�ߺ�\����\Example\libraries\zf_common" -I"E:\�ߺ�\����\Example\libraries\zf_device" -I"E:\�ߺ�\����\Example\5.20��test\code" -I"E:\�ߺ�\����\Example\libraries\zf_driver" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
sdk/Peripheral/ch32v30x_usbotg_device.o: E:/�ߺ�/����/Example/libraries/sdk/Peripheral/ch32v30x_usbotg_device.c
	@	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"E:\�ߺ�\����\Example\Libraries\doc" -I"E:\�ߺ�\����\Example\libraries\sdk\Core" -I"E:\�ߺ�\����\Example\libraries\sdk\Ld" -I"E:\�ߺ�\����\Example\libraries\sdk\Peripheral" -I"E:\�ߺ�\����\Example\libraries\sdk\Startup" -I"E:\�ߺ�\����\Example\5.20��test\user\inc" -I"E:\�ߺ�\����\Example\libraries\zf_common" -I"E:\�ߺ�\����\Example\libraries\zf_device" -I"E:\�ߺ�\����\Example\5.20��test\code" -I"E:\�ߺ�\����\Example\libraries\zf_driver" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
sdk/Peripheral/ch32v30x_wwdg.o: E:/�ߺ�/����/Example/libraries/sdk/Peripheral/ch32v30x_wwdg.c
	@	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"E:\�ߺ�\����\Example\Libraries\doc" -I"E:\�ߺ�\����\Example\libraries\sdk\Core" -I"E:\�ߺ�\����\Example\libraries\sdk\Ld" -I"E:\�ߺ�\����\Example\libraries\sdk\Peripheral" -I"E:\�ߺ�\����\Example\libraries\sdk\Startup" -I"E:\�ߺ�\����\Example\5.20��test\user\inc" -I"E:\�ߺ�\����\Example\libraries\zf_common" -I"E:\�ߺ�\����\Example\libraries\zf_device" -I"E:\�ߺ�\����\Example\5.20��test\code" -I"E:\�ߺ�\����\Example\libraries\zf_driver" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@

