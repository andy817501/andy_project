################################################################################
# �Զ����ɵ��ļ�����Ҫ�༭��
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
E:/�ߺ�/����/Example/libraries/zf_common/zf_common_clock.c \
E:/�ߺ�/����/Example/libraries/zf_common/zf_common_debug.c \
E:/�ߺ�/����/Example/libraries/zf_common/zf_common_fifo.c \
E:/�ߺ�/����/Example/libraries/zf_common/zf_common_font.c \
E:/�ߺ�/����/Example/libraries/zf_common/zf_common_function.c \
E:/�ߺ�/����/Example/libraries/zf_common/zf_common_interrupt.c 

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
zf_common/zf_common_clock.o: E:/�ߺ�/����/Example/libraries/zf_common/zf_common_clock.c
	@	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"E:\�ߺ�\����\Example\Libraries\doc" -I"E:\�ߺ�\����\Example\libraries\sdk\Core" -I"E:\�ߺ�\����\Example\libraries\sdk\Ld" -I"E:\�ߺ�\����\Example\libraries\sdk\Peripheral" -I"E:\�ߺ�\����\Example\libraries\sdk\Startup" -I"E:\�ߺ�\����\Example\5.20��test\user\inc" -I"E:\�ߺ�\����\Example\libraries\zf_common" -I"E:\�ߺ�\����\Example\libraries\zf_device" -I"E:\�ߺ�\����\Example\5.20��test\code" -I"E:\�ߺ�\����\Example\libraries\zf_driver" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
zf_common/zf_common_debug.o: E:/�ߺ�/����/Example/libraries/zf_common/zf_common_debug.c
	@	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"E:\�ߺ�\����\Example\Libraries\doc" -I"E:\�ߺ�\����\Example\libraries\sdk\Core" -I"E:\�ߺ�\����\Example\libraries\sdk\Ld" -I"E:\�ߺ�\����\Example\libraries\sdk\Peripheral" -I"E:\�ߺ�\����\Example\libraries\sdk\Startup" -I"E:\�ߺ�\����\Example\5.20��test\user\inc" -I"E:\�ߺ�\����\Example\libraries\zf_common" -I"E:\�ߺ�\����\Example\libraries\zf_device" -I"E:\�ߺ�\����\Example\5.20��test\code" -I"E:\�ߺ�\����\Example\libraries\zf_driver" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
zf_common/zf_common_fifo.o: E:/�ߺ�/����/Example/libraries/zf_common/zf_common_fifo.c
	@	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"E:\�ߺ�\����\Example\Libraries\doc" -I"E:\�ߺ�\����\Example\libraries\sdk\Core" -I"E:\�ߺ�\����\Example\libraries\sdk\Ld" -I"E:\�ߺ�\����\Example\libraries\sdk\Peripheral" -I"E:\�ߺ�\����\Example\libraries\sdk\Startup" -I"E:\�ߺ�\����\Example\5.20��test\user\inc" -I"E:\�ߺ�\����\Example\libraries\zf_common" -I"E:\�ߺ�\����\Example\libraries\zf_device" -I"E:\�ߺ�\����\Example\5.20��test\code" -I"E:\�ߺ�\����\Example\libraries\zf_driver" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
zf_common/zf_common_font.o: E:/�ߺ�/����/Example/libraries/zf_common/zf_common_font.c
	@	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"E:\�ߺ�\����\Example\Libraries\doc" -I"E:\�ߺ�\����\Example\libraries\sdk\Core" -I"E:\�ߺ�\����\Example\libraries\sdk\Ld" -I"E:\�ߺ�\����\Example\libraries\sdk\Peripheral" -I"E:\�ߺ�\����\Example\libraries\sdk\Startup" -I"E:\�ߺ�\����\Example\5.20��test\user\inc" -I"E:\�ߺ�\����\Example\libraries\zf_common" -I"E:\�ߺ�\����\Example\libraries\zf_device" -I"E:\�ߺ�\����\Example\5.20��test\code" -I"E:\�ߺ�\����\Example\libraries\zf_driver" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
zf_common/zf_common_function.o: E:/�ߺ�/����/Example/libraries/zf_common/zf_common_function.c
	@	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"E:\�ߺ�\����\Example\Libraries\doc" -I"E:\�ߺ�\����\Example\libraries\sdk\Core" -I"E:\�ߺ�\����\Example\libraries\sdk\Ld" -I"E:\�ߺ�\����\Example\libraries\sdk\Peripheral" -I"E:\�ߺ�\����\Example\libraries\sdk\Startup" -I"E:\�ߺ�\����\Example\5.20��test\user\inc" -I"E:\�ߺ�\����\Example\libraries\zf_common" -I"E:\�ߺ�\����\Example\libraries\zf_device" -I"E:\�ߺ�\����\Example\5.20��test\code" -I"E:\�ߺ�\����\Example\libraries\zf_driver" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
zf_common/zf_common_interrupt.o: E:/�ߺ�/����/Example/libraries/zf_common/zf_common_interrupt.c
	@	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"E:\�ߺ�\����\Example\Libraries\doc" -I"E:\�ߺ�\����\Example\libraries\sdk\Core" -I"E:\�ߺ�\����\Example\libraries\sdk\Ld" -I"E:\�ߺ�\����\Example\libraries\sdk\Peripheral" -I"E:\�ߺ�\����\Example\libraries\sdk\Startup" -I"E:\�ߺ�\����\Example\5.20��test\user\inc" -I"E:\�ߺ�\����\Example\libraries\zf_common" -I"E:\�ߺ�\����\Example\libraries\zf_device" -I"E:\�ߺ�\����\Example\5.20��test\code" -I"E:\�ߺ�\����\Example\libraries\zf_driver" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@

