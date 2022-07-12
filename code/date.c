#include "zf_driver_adc.h"
#include "zf_driver_gpio.h"
#include "zf_driver_exti.h"
#include "ch32v30x.h"
#include <data.h>
#include "ch32v30x_misc.h"

short date_get(void)
{
short ethyl_numb;
    ethyl_numb=adc_mean_filter(ADC_IN4_A4, ADC_8BIT,5);

return (ethyl_numb%100);
}
void shiguan_init(void)
{
    GPIO_InitTypeDef  GPIO_InitStructure;
    EXTI_InitTypeDef EXTI_InitStructure;
    NVIC_InitTypeDef NVIC_InitStructure;
    RCC_APB2PeriphClockCmd(RCC_APB2Periph_AFIO|RCC_APB2Periph_GPIOE,ENABLE);
    GPIO_InitStructure.GPIO_Pin = GPIO_Pin_10|GPIO_Pin_11|GPIO_Pin_12|GPIO_Pin_13;
    GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AIN|GPIO_Mode_IPD;

    GPIO_Init(GPIOE, &GPIO_InitStructure);
/* GPIOE ----> EXTI_Line2 */
    GPIO_EXTILineConfig(GPIO_PortSourceGPIOE,GPIO_PinSource10);
    EXTI_InitStructure.EXTI_Line=EXTI_Line10;
    EXTI_InitStructure.EXTI_Mode = EXTI_Mode_Interrupt;
    EXTI_InitStructure.EXTI_Trigger = EXTI_Trigger_Rising_Falling; //按下为高电平，用上升沿
    EXTI_InitStructure.EXTI_LineCmd = ENABLE;
    EXTI_Init(&EXTI_InitStructure);
    NVIC_InitStructure.NVIC_IRQChannel = EXTI15_10_IRQn ;
    NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority = 1; //抢占优先级
    NVIC_InitStructure.NVIC_IRQChannelSubPriority =2 ;        //子优先级
    NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;
    NVIC_Init(&NVIC_InitStructure);

    /* GPIOE ----> EXTI_Line4 */
    GPIO_EXTILineConfig(GPIO_PortSourceGPIOE,GPIO_PinSource11);
    EXTI_InitStructure.EXTI_Line=EXTI_Line11;
    EXTI_InitStructure.EXTI_Mode = EXTI_Mode_Interrupt;
    EXTI_InitStructure.EXTI_Trigger = EXTI_Trigger_Rising_Falling; //按下为高电平，用上升沿
    EXTI_InitStructure.EXTI_LineCmd = ENABLE;
    EXTI_Init(&EXTI_InitStructure);
    NVIC_InitStructure.NVIC_IRQChannel = EXTI15_10_IRQn ;
    NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority = 2; //抢占优先级
    NVIC_InitStructure.NVIC_IRQChannelSubPriority = 2;        //子优先级
    NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;
    NVIC_Init(&NVIC_InitStructure);

    /* GPIOE ----> EXTI_Line4 */
    GPIO_EXTILineConfig(GPIO_PortSourceGPIOE,GPIO_PinSource12);
    EXTI_InitStructure.EXTI_Line=EXTI_Line12;
    EXTI_InitStructure.EXTI_Mode = EXTI_Mode_Interrupt;
    EXTI_InitStructure.EXTI_Trigger = EXTI_Trigger_Rising_Falling; //按下为高电平，用上升沿
    EXTI_InitStructure.EXTI_LineCmd = ENABLE;
    EXTI_Init(&EXTI_InitStructure);
    NVIC_InitStructure.NVIC_IRQChannel = EXTI15_10_IRQn ;
    NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority = 2; //抢占优先级
    NVIC_InitStructure.NVIC_IRQChannelSubPriority = 2;        //子优先级
    NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;
    NVIC_Init(&NVIC_InitStructure);

    /* GPIOE ----> EXTI_Line4 */
    GPIO_EXTILineConfig(GPIO_PortSourceGPIOE,GPIO_PinSource13);
    EXTI_InitStructure.EXTI_Line=EXTI_Line13;
    EXTI_InitStructure.EXTI_Mode = EXTI_Mode_Interrupt;
    EXTI_InitStructure.EXTI_Trigger = EXTI_Trigger_Rising_Falling; //按下为高电平，用上升沿
    EXTI_InitStructure.EXTI_LineCmd = ENABLE;
    EXTI_Init(&EXTI_InitStructure);
    NVIC_InitStructure.NVIC_IRQChannel = EXTI15_10_IRQn ;
    NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority = 2; //抢占优先级
    NVIC_InitStructure.NVIC_IRQChannelSubPriority = 2;        //子优先级
    NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;
    NVIC_Init(&NVIC_InitStructure);
}


void all_gpio_init(void)
{
gpio_init(C0, GPO, 0, GPO_PUSH_PULL);  //酒精消毒
gpio_init(C10, GPO,1, GPO_OPEN_DTAIN);  //001开始消毒
gpio_init(C11, GPO,1, GPO_OPEN_DTAIN); //002试管搭载完毕，
gpio_init(C12, GPO,1, GPO_OPEN_DTAIN); //003试管取完了
gpio_init(D0, GPO,1, GPO_OPEN_DTAIN); //消毒完成
}
