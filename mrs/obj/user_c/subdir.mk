################################################################################
# �Զ����ɵ��ļ�����Ҫ�༭��
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
E:/�ߺ�/����/Example/5.20��test/user/src/isr.c \
E:/�ߺ�/����/Example/5.20��test/user/src/main.c 

OBJS += \
./user_c/isr.o \
./user_c/main.o 

C_DEPS += \
./user_c/isr.d \
./user_c/main.d 


# Each subdirectory must supply rules for building sources it contributes
user_c/isr.o: E:/�ߺ�/����/Example/5.20��test/user/src/isr.c
	@	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"E:\�ߺ�\����\Example\Libraries\doc" -I"E:\�ߺ�\����\Example\libraries\sdk\Core" -I"E:\�ߺ�\����\Example\libraries\sdk\Ld" -I"E:\�ߺ�\����\Example\libraries\sdk\Peripheral" -I"E:\�ߺ�\����\Example\libraries\sdk\Startup" -I"E:\�ߺ�\����\Example\5.20��test\user\inc" -I"E:\�ߺ�\����\Example\libraries\zf_common" -I"E:\�ߺ�\����\Example\libraries\zf_device" -I"E:\�ߺ�\����\Example\5.20��test\code" -I"E:\�ߺ�\����\Example\libraries\zf_driver" -I"E:\�ߺ�\����\Example\5.20��test\user" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
user_c/main.o: E:/�ߺ�/����/Example/5.20��test/user/src/main.c
	@	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"E:\�ߺ�\����\Example\Libraries\doc" -I"E:\�ߺ�\����\Example\libraries\sdk\Core" -I"E:\�ߺ�\����\Example\libraries\sdk\Ld" -I"E:\�ߺ�\����\Example\libraries\sdk\Peripheral" -I"E:\�ߺ�\����\Example\libraries\sdk\Startup" -I"E:\�ߺ�\����\Example\5.20��test\user\inc" -I"E:\�ߺ�\����\Example\libraries\zf_common" -I"E:\�ߺ�\����\Example\libraries\zf_device" -I"E:\�ߺ�\����\Example\5.20��test\code" -I"E:\�ߺ�\����\Example\libraries\zf_driver" -I"E:\�ߺ�\����\Example\5.20��test\user" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@

