################################################################################
# �Զ����ɵ��ļ�����Ҫ�༭��
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
E:/�ߺ�/����/Example/5.20��test/code/L610.c \
E:/�ߺ�/����/Example/5.20��test/code/PID.c \
E:/�ߺ�/����/Example/5.20��test/code/cJSON.c \
E:/�ߺ�/����/Example/5.20��test/code/date.c \
E:/�ߺ�/����/Example/5.20��test/code/xunji.c 

OBJS += \
./code/L610.o \
./code/PID.o \
./code/cJSON.o \
./code/date.o \
./code/xunji.o 

C_DEPS += \
./code/L610.d \
./code/PID.d \
./code/cJSON.d \
./code/date.d \
./code/xunji.d 


# Each subdirectory must supply rules for building sources it contributes
code/L610.o: E:/�ߺ�/����/Example/5.20��test/code/L610.c
	@	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"E:\�ߺ�\����\Example\Libraries\doc" -I"E:\�ߺ�\����\Example\libraries\sdk\Core" -I"E:\�ߺ�\����\Example\libraries\sdk\Ld" -I"E:\�ߺ�\����\Example\libraries\sdk\Peripheral" -I"E:\�ߺ�\����\Example\libraries\sdk\Startup" -I"E:\�ߺ�\����\Example\5.20��test\user\inc" -I"E:\�ߺ�\����\Example\libraries\zf_common" -I"E:\�ߺ�\����\Example\libraries\zf_device" -I"E:\�ߺ�\����\Example\5.20��test\code" -I"E:\�ߺ�\����\Example\libraries\zf_driver" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
code/PID.o: E:/�ߺ�/����/Example/5.20��test/code/PID.c
	@	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"E:\�ߺ�\����\Example\Libraries\doc" -I"E:\�ߺ�\����\Example\libraries\sdk\Core" -I"E:\�ߺ�\����\Example\libraries\sdk\Ld" -I"E:\�ߺ�\����\Example\libraries\sdk\Peripheral" -I"E:\�ߺ�\����\Example\libraries\sdk\Startup" -I"E:\�ߺ�\����\Example\5.20��test\user\inc" -I"E:\�ߺ�\����\Example\libraries\zf_common" -I"E:\�ߺ�\����\Example\libraries\zf_device" -I"E:\�ߺ�\����\Example\5.20��test\code" -I"E:\�ߺ�\����\Example\libraries\zf_driver" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
code/cJSON.o: E:/�ߺ�/����/Example/5.20��test/code/cJSON.c
	@	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"E:\�ߺ�\����\Example\Libraries\doc" -I"E:\�ߺ�\����\Example\libraries\sdk\Core" -I"E:\�ߺ�\����\Example\libraries\sdk\Ld" -I"E:\�ߺ�\����\Example\libraries\sdk\Peripheral" -I"E:\�ߺ�\����\Example\libraries\sdk\Startup" -I"E:\�ߺ�\����\Example\5.20��test\user\inc" -I"E:\�ߺ�\����\Example\libraries\zf_common" -I"E:\�ߺ�\����\Example\libraries\zf_device" -I"E:\�ߺ�\����\Example\5.20��test\code" -I"E:\�ߺ�\����\Example\libraries\zf_driver" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
code/date.o: E:/�ߺ�/����/Example/5.20��test/code/date.c
	@	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"E:\�ߺ�\����\Example\Libraries\doc" -I"E:\�ߺ�\����\Example\libraries\sdk\Core" -I"E:\�ߺ�\����\Example\libraries\sdk\Ld" -I"E:\�ߺ�\����\Example\libraries\sdk\Peripheral" -I"E:\�ߺ�\����\Example\libraries\sdk\Startup" -I"E:\�ߺ�\����\Example\5.20��test\user\inc" -I"E:\�ߺ�\����\Example\libraries\zf_common" -I"E:\�ߺ�\����\Example\libraries\zf_device" -I"E:\�ߺ�\����\Example\5.20��test\code" -I"E:\�ߺ�\����\Example\libraries\zf_driver" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
code/xunji.o: E:/�ߺ�/����/Example/5.20��test/code/xunji.c
	@	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"E:\�ߺ�\����\Example\Libraries\doc" -I"E:\�ߺ�\����\Example\libraries\sdk\Core" -I"E:\�ߺ�\����\Example\libraries\sdk\Ld" -I"E:\�ߺ�\����\Example\libraries\sdk\Peripheral" -I"E:\�ߺ�\����\Example\libraries\sdk\Startup" -I"E:\�ߺ�\����\Example\5.20��test\user\inc" -I"E:\�ߺ�\����\Example\libraries\zf_common" -I"E:\�ߺ�\����\Example\libraries\zf_device" -I"E:\�ߺ�\����\Example\5.20��test\code" -I"E:\�ߺ�\����\Example\libraries\zf_driver" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@

