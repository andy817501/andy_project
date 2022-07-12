/*********************************************************************************************************************
* COPYRIGHT NOTICE
* Copyright (c) 2019,逐飞科技
* All rights reserved.
*
* 以下所有内容版权均属逐飞科技所有，未经允许不得用于商业用途，
* 欢迎各位使用并传播本程序，修改内容时必须保留逐飞科技的版权声明。
*
* @file             isr
* @company          成都逐飞科技有限公司
 * @author          逐飞科技(QQ790875685)
* @version          查看doc内version文件 版本说明
* @Software         MounRiver Studio V1.51
* @Target core      CH32V307VCT6
* @Taobao           https://seekfree.taobao.com/
* @date             2021-11-25
*                   V1.1 2022.01.11  对调ch1和ch2的蓝牙回调函数位置
********************************************************************************************************************/
#include "main.h"
#include "zf_common_headfile.h"
void NMI_Handler(void)       __attribute__((interrupt("WCH-Interrupt-fast")));
void HardFault_Handler(void) __attribute__((interrupt("WCH-Interrupt-fast")));

void USART1_IRQHandler(void) __attribute__((interrupt("WCH-Interrupt-fast")));
void USART2_IRQHandler(void) __attribute__((interrupt("WCH-Interrupt-fast")));
void USART3_IRQHandler(void) __attribute__((interrupt("WCH-Interrupt-fast")));
void UART4_IRQHandler (void) __attribute__((interrupt("WCH-Interrupt-fast")));
void UART5_IRQHandler (void) __attribute__((interrupt("WCH-Interrupt-fast")));
void UART6_IRQHandler (void) __attribute__((interrupt("WCH-Interrupt-fast")));
void UART7_IRQHandler (void) __attribute__((interrupt("WCH-Interrupt-fast")));
void UART8_IRQHandler (void) __attribute__((interrupt("WCH-Interrupt-fast")));
void DVP_IRQHandler (void) __attribute__((interrupt("WCH-Interrupt-fast")));
//void TIM1_BRK_IRQHandler        (void)  __attribute__((interrupt("WCH-Interrupt-fast")));
void TIM1_UP_IRQHandler         (void)  __attribute__((interrupt("WCH-Interrupt-fast")));
//void TIM1_TRG_COM_IRQHandler    (void)  __attribute__((interrupt("WCH-Interrupt-fast")));
//void TIM1_CC_IRQHandler         (void)  __attribute__((interrupt("WCH-Interrupt-fast")));
void TIM2_IRQHandler            (void)  __attribute__((interrupt("WCH-Interrupt-fast")));
void TIM3_IRQHandler            (void)  __attribute__((interrupt("WCH-Interrupt-fast")));
void TIM4_IRQHandler            (void)  __attribute__((interrupt("WCH-Interrupt-fast")));
void TIM5_IRQHandler            (void)  __attribute__((interrupt("WCH-Interrupt-fast")));
void TIM6_IRQHandler            (void)  __attribute__((interrupt("WCH-Interrupt-fast")));
void TIM7_IRQHandler            (void)  __attribute__((interrupt("WCH-Interrupt-fast")));
//void TIM8_BRK_IRQHandler        (void)  __attribute__((interrupt("WCH-Interrupt-fast")));
void TIM8_UP_IRQHandler         (void)  __attribute__((interrupt("WCH-Interrupt-fast")));
//void TIM8_TRG_COM_IRQHandler    (void)  __attribute__((interrupt("WCH-Interrupt-fast")));
//void TIM8_CC_IRQHandler         (void)  __attribute__((interrupt("WCH-Interrupt-fast")));
//void TIM9_BRK_IRQHandler        (void)  __attribute__((interrupt("WCH-Interrupt-fast")));
void TIM9_UP_IRQHandler         (void)  __attribute__((interrupt("WCH-Interrupt-fast")));
//void TIM9_TRG_COM_IRQHandler    (void)  __attribute__((interrupt("WCH-Interrupt-fast")));
//void TIM9_CC_IRQHandler         (void)  __attribute__((interrupt("WCH-Interrupt-fast")));
//void TIM10_BRK_IRQHandler       (void)  __attribute__((interrupt("WCH-Interrupt-fast")));
void TIM10_UP_IRQHandler        (void)  __attribute__((interrupt("WCH-Interrupt-fast")));
//void TIM10_TRG_COM_IRQHandler   (void)  __attribute__((interrupt("WCH-Interrupt-fast")));
//void TIM10_CC_IRQHandler        (void)  __attribute__((interrupt("WCH-Interrupt-fast")));

void EXTI0_IRQHandler(void) __attribute__((interrupt("WCH-Interrupt-fast")));
void EXTI1_IRQHandler(void) __attribute__((interrupt("WCH-Interrupt-fast")));
void EXTI2_IRQHandler(void) __attribute__((interrupt("WCH-Interrupt-fast")));
void EXTI3_IRQHandler(void) __attribute__((interrupt("WCH-Interrupt-fast")));
void EXTI4_IRQHandler(void) __attribute__((interrupt("WCH-Interrupt-fast")));
void EXTI9_5_IRQHandler(void) __attribute__((interrupt("WCH-Interrupt-fast")));
void EXTI15_10_IRQHandler(void) __attribute__((interrupt("WCH-Interrupt-fast")));
 short tim6_flag=0;
 unsigned char  TIM9CH1_CAPTURE_STA=0;  //输入捕获状态
 unsigned int TIM9CH1_CAPTURE_VAL;    //输入捕获值(TIM2/TIM9是32位)
 short p1_left=0,p4_rignt=0;
 short  test_tube_nume;
extern short beep_flag,go_flag,xiaodu_flag,ethyl_numb;

void USART1_IRQHandler(void)
{
    if(USART_GetITStatus(USART1, USART_IT_RXNE) != RESET)
    {
        extern void uart_rx_interrupt_handler (void);
              uart_rx_interrupt_handler();
        USART_ClearITPendingBit(USART1, USART_IT_RXNE);
        USART_ClearITPendingBit(USART1, USART_IT_RXNE);
    }
}
void USART2_IRQHandler(void)
{
    if(USART_GetITStatus(USART2, USART_IT_RXNE) != RESET)
    {

        }
        USART_ClearITPendingBit(USART2, USART_IT_RXNE);
    }

void USART3_IRQHandler(void)
{
    if(USART_GetITStatus(USART3, USART_IT_RXNE) != RESET)
    {
        // 此处编写用户代码
        // 务必读取数据或者关闭中断 否则会一直触发串口接收中断


        USART_ClearITPendingBit(USART3, USART_IT_RXNE);
    }
}
void UART4_IRQHandler (void)
{
    if(USART_GetITStatus(UART4, USART_IT_RXNE) != RESET)
    {

        USART_ClearITPendingBit(UART4, USART_IT_RXNE);
    }
}
void UART5_IRQHandler (void)
{
    if(USART_GetITStatus(UART5, USART_IT_RXNE) != RESET)
    {
        camera_uart_handler();
        USART_ClearITPendingBit(UART5, USART_IT_RXNE);
    }
}
void UART6_IRQHandler (void)
{
    if(USART_GetITStatus(UART6, USART_IT_RXNE) != RESET)
    {

        USART_ClearITPendingBit(UART6, USART_IT_RXNE);
    }
}
void UART7_IRQHandler (void)
{
    if(USART_GetITStatus(UART7, USART_IT_RXNE) != RESET)
    {
        if(wireless_type == WIRELESS_UART)
        {

        }
        else if(wireless_type == BLUETOOTH_CH9141)
        {
            bluetooth_ch9141_uart_callback_ch1();
        }
        USART_ClearITPendingBit(UART7, USART_IT_RXNE);
    }
}
void UART8_IRQHandler (void)
{
    if(USART_GetITStatus(UART8, USART_IT_RXNE) != RESET)
    {
//        extern void uart_handler (void);
//        uart_handler();
        USART_ClearITPendingBit(UART8, USART_IT_RXNE);
    }
}



void DVP_IRQHandler(void)
{
    if (DVP->IFR & RB_DVP_IF_FRM_DONE)
    {
        camera_dvp_handler();
        DVP->IFR &= ~RB_DVP_IF_FRM_DONE;
    }
}
void EXTI0_IRQHandler(void)
{
    if(SET == EXTI_GetITStatus(EXTI_Line0))
    {
        EXTI_ClearITPendingBit(EXTI_Line0);

    }
}

void EXTI1_IRQHandler(void)
{
    if(SET == EXTI_GetITStatus(EXTI_Line1))
    {


        EXTI_ClearITPendingBit(EXTI_Line1);

    }
}

void EXTI2_IRQHandler(void)
{
    if(SET == EXTI_GetITStatus(EXTI_Line2))
    {

        p1_left=p1_left+1;

        EXTI_ClearITPendingBit(EXTI_Line2);

    }
}

void EXTI3_IRQHandler(void)
{
    if(SET == EXTI_GetITStatus(EXTI_Line3))
    {
        EXTI_ClearITPendingBit(EXTI_Line3);

    }
}

void EXTI4_IRQHandler(void)
{
    if(SET == EXTI_GetITStatus(EXTI_Line4))
    {

        p4_rignt=p4_rignt+1;

        EXTI_ClearITPendingBit(EXTI_Line4);

    }
}
void EXTI9_5_IRQHandler(void)
{
    if(SET == EXTI_GetITStatus(EXTI_Line5))
    {
        EXTI_ClearITPendingBit(EXTI_Line5);

    }
    if(SET == EXTI_GetITStatus(EXTI_Line6))
    {
        EXTI_ClearITPendingBit(EXTI_Line6);

    }
    if(SET == EXTI_GetITStatus(EXTI_Line7))
    {
        EXTI_ClearITPendingBit(EXTI_Line7);

    }
    if(SET == EXTI_GetITStatus(EXTI_Line8))
    {
        EXTI_ClearITPendingBit(EXTI_Line8);

    }
    if(SET == EXTI_GetITStatus(EXTI_Line9))
    {
        EXTI_ClearITPendingBit(EXTI_Line9);

    }

}

void EXTI15_10_IRQHandler(void)
{
    if(SET == EXTI_GetITStatus(EXTI_Line10))
    {
       if(gpio_get_level(E10))
        test_tube_nume=1;
       else{ test_tube_nume=0;}

       L610_to_server(beep_flag,go_flag, xiaodu_flag, test_tube_nume, ethyl_numb);

        EXTI_ClearITPendingBit(EXTI_Line10);

    }
    if(SET == EXTI_GetITStatus(EXTI_Line11))
    {
        if(gpio_get_level(E11))
        test_tube_nume=2;
        else{  test_tube_nume=1;}

        L610_to_server(beep_flag,go_flag, xiaodu_flag, test_tube_nume, ethyl_numb);

        EXTI_ClearITPendingBit(EXTI_Line11);
    }
    if(SET == EXTI_GetITStatus(EXTI_Line12))
    {
        if(gpio_get_level(E12))
            test_tube_nume=4;
        else{test_tube_nume=3;
        L610_to_server(beep_flag,go_flag, xiaodu_flag, test_tube_nume, ethyl_numb);
      }

        EXTI_ClearITPendingBit(EXTI_Line12);
    }
    if(SET == EXTI_GetITStatus(EXTI_Line13))
    {      if(gpio_get_level(E13))
        test_tube_nume=3;
    else{test_tube_nume=2;}

    L610_to_server(beep_flag,go_flag, xiaodu_flag, test_tube_nume, ethyl_numb);

        EXTI_ClearITPendingBit(EXTI_Line13);
    }
    if(SET == EXTI_GetITStatus(EXTI_Line14))
    {
        EXTI_ClearITPendingBit(EXTI_Line14);

    }
    if(SET == EXTI_GetITStatus(EXTI_Line15))
    {
        EXTI_ClearITPendingBit(EXTI_Line15);

    }
}

void TIM1_UP_IRQHandler(void)
{
    if(TIM_GetITStatus(TIM1, TIM_IT_Update) != RESET)
    {
        TIM_ClearITPendingBit(TIM1, TIM_IT_Update);

    }
}


void TIM2_IRQHandler(void)
{
    if(TIM_GetITStatus(TIM2, TIM_IT_Update) != RESET)
    {
       TIM_ClearITPendingBit(TIM2, TIM_IT_Update );


    }
}

void TIM3_IRQHandler(void)
{
    if(TIM_GetITStatus(TIM3, TIM_IT_Update) != RESET)
    {
       TIM_ClearITPendingBit(TIM3, TIM_IT_Update );


    }
}

void TIM4_IRQHandler(void)
{
    if(TIM_GetITStatus(TIM4, TIM_IT_Update) != RESET)
    {
       TIM_ClearITPendingBit(TIM4, TIM_IT_Update );


    }
}

void TIM5_IRQHandler(void)
{
    if(TIM_GetITStatus(TIM5, TIM_IT_Update) != RESET)
    {
       TIM_ClearITPendingBit(TIM5, TIM_IT_Update );


    }
}

void TIM6_IRQHandler(void)
{
    if(TIM_GetITStatus(TIM6, TIM_IT_Update) != RESET)
    {

       PID_car_GO();
       TIM_ClearITPendingBit(TIM6, TIM_IT_Update );


    }
}

void TIM7_IRQHandler(void)
{
    if(TIM_GetITStatus(TIM7, TIM_IT_Update) != RESET)
    {
       TIM_ClearITPendingBit(TIM7, TIM_IT_Update );


    }
}


void TIM8_UP_IRQHandler(void)
{
    if(TIM_GetITStatus(TIM8, TIM_IT_Update) != RESET)
    {
        TIM_ClearITPendingBit(TIM8, TIM_IT_Update);

    }
}


void TIM9_UP_IRQHandler(void)
{

    if((TIM9CH1_CAPTURE_STA&0X80)==0)//还未成功捕获
    {
        if(TIM_GetITStatus(TIM9, TIM_IT_Update) != RESET)//溢出
        {
            if(TIM9CH1_CAPTURE_STA&0X40)//已经捕获到高电平了
            {
                if((TIM9CH1_CAPTURE_STA&0X3F)==0X3F)//高电平太长了
                {
                    TIM9CH1_CAPTURE_STA|=0X80;      //标记成功捕获了一次
                    TIM9CH1_CAPTURE_VAL=0XFFFFFFFF;
                }else TIM9CH1_CAPTURE_STA++;
            }
        }
        if(TIM_GetITStatus(TIM9, TIM_IT_CC1) != RESET)//捕获1发生捕获事件
        {
            if(TIM9CH1_CAPTURE_STA&0X40)        //捕获到一个下降沿
            {
                TIM9CH1_CAPTURE_STA|=0X80;      //标记成功捕获到一次高电平脉宽
                TIM9CH1_CAPTURE_VAL=TIM_GetCapture1(TIM9);//获取当前的捕获值.
                TIM_OC1PolarityConfig(TIM9,TIM_ICPolarity_Rising); //CC1P=0 设置为上升沿捕获
            }else                               //还未开始,第一次捕获上升沿
            {
                TIM9CH1_CAPTURE_STA=0;          //清空
                TIM9CH1_CAPTURE_VAL=0;
                TIM9CH1_CAPTURE_STA|=0X40;      //标记捕获到了上升沿
                TIM_Cmd(TIM9,DISABLE );     //关闭定时器5
                TIM_SetCounter(TIM9,0);
                TIM_OC1PolarityConfig(TIM9,TIM_ICPolarity_Falling);     //CC1P=1 设置为下降沿捕获
                TIM_Cmd(TIM9,ENABLE );  //使能定时器5
            }
        }
    }
    TIM_ClearITPendingBit(TIM9, TIM_IT_CC1|TIM_IT_Update); //清除中断标志位
}


void TIM10_UP_IRQHandler(void)
{
    if(TIM_GetITStatus(TIM10, TIM_IT_Update) != RESET)
    {


        TIM_ClearITPendingBit(TIM10, TIM_IT_Update);

    }
}



//.section    .text.vector_handler, "ax", @progbits

//   .weak   EXTI0_IRQHandler           /* EXTI Line 0 */
//   .weak   EXTI1_IRQHandler           /* EXTI Line 1 */
//   .weak   EXTI2_IRQHandler           /* EXTI Line 2 */
//   .weak   EXTI3_IRQHandler           /* EXTI Line 3 */
//   .weak   EXTI4_IRQHandler           /* EXTI Line 4 */
//   .weak   DMA1_Channel1_IRQHandler   /* DMA1 Channel 1 */
//   .weak   DMA1_Channel2_IRQHandler   /* DMA1 Channel 2 */
//   .weak   DMA1_Channel3_IRQHandler   /* DMA1 Channel 3 */
//   .weak   DMA1_Channel4_IRQHandler   /* DMA1 Channel 4 */
//   .weak   DMA1_Channel5_IRQHandler   /* DMA1 Channel 5 */
//   .weak   DMA1_Channel6_IRQHandler   /* DMA1 Channel 6 */
//   .weak   DMA1_Channel7_IRQHandler   /* DMA1 Channel 7 */
//   .weak   ADC1_2_IRQHandler          /* ADC1_2 */
//   .weak   USB_HP_CAN1_TX_IRQHandler  /* USB HP and CAN1 TX */
//   .weak   USB_LP_CAN1_RX0_IRQHandler /* USB LP and CAN1RX0 */
//   .weak   CAN1_RX1_IRQHandler        /* CAN1 RX1 */
//   .weak   CAN1_SCE_IRQHandler        /* CAN1 SCE */
//   .weak   EXTI9_5_IRQHandler         /* EXTI Line 9..5 */
//   .weak   TIM1_BRK_IRQHandler        /* TIM1 Break */
//   .weak   TIM1_UP_IRQHandler         /* TIM1 Update */
//   .weak   TIM1_TRG_COM_IRQHandler    /* TIM1 Trigger and Commutation */
//   .weak   TIM1_CC_IRQHandler         /* TIM1 Capture Compare */
//   .weak   TIM2_IRQHandler            /* TIM2 */
//   .weak   TIM3_IRQHandler            /* TIM3 */
//   .weak   TIM4_IRQHandler            /* TIM4 */
//   .weak   I2C1_EV_IRQHandler         /* I2C1 Event */
//   .weak   I2C1_ER_IRQHandler         /* I2C1 Error */
//   .weak   I2C2_EV_IRQHandler         /* I2C2 Event */
//   .weak   I2C2_ER_IRQHandler         /* I2C2 Error */
//   .weak   SPI1_IRQHandler            /* SPI1 */
//   .weak   SPI2_IRQHandler            /* SPI2 */
//   .weak   USART1_IRQHandler          /* USART1 */
//   .weak   USART2_IRQHandler          /* USART2 */
//   .weak   USART3_IRQHandler          /* USART3 */
//   .weak   EXTI15_10_IRQHandler       /* EXTI Line 15..10 */
//   .weak   RTCAlarm_IRQHandler        /* RTC Alarm through EXTI Line */
//   .weak   USBWakeUp_IRQHandler       /* USB Wakeup from suspend */
//   .weak   TIM8_BRK_IRQHandler        /* TIM8 Break */
//   .weak   TIM8_UP_IRQHandler         /* TIM8 Update */
//   .weak   TIM8_TRG_COM_IRQHandler    /* TIM8 Trigger and Commutation */
//   .weak   TIM8_CC_IRQHandler         /* TIM8 Capture Compare */
//   .weak   RNG_IRQHandler             /* RNG */
//   .weak   FSMC_IRQHandler            /* FSMC */
//   .weak   SDIO_IRQHandler            /* SDIO */
//   .weak   TIM5_IRQHandler            /* TIM5 */
//   .weak   SPI3_IRQHandler            /* SPI3 */
//   .weak   UART4_IRQHandler           /* UART4 */
//   .weak   UART5_IRQHandler           /* UART5 */
//   .weak   TIM6_IRQHandler            /* TIM6 */
//   .weak   TIM7_IRQHandler            /* TIM7 */
//   .weak   DMA2_Channel1_IRQHandler   /* DMA2 Channel 1 */
//   .weak   DMA2_Channel2_IRQHandler   /* DMA2 Channel 2 */
//   .weak   DMA2_Channel3_IRQHandler   /* DMA2 Channel 3 */
//   .weak   DMA2_Channel4_IRQHandler   /* DMA2 Channel 4 */
//   .weak   DMA2_Channel5_IRQHandler   /* DMA2 Channel 5 */
//   .weak   ETH_IRQHandler             /* ETH */
//   .weak   ETH_WKUP_IRQHandler        /* ETH WakeUp */
//   .weak   CAN2_TX_IRQHandler         /* CAN2 TX */
//   .weak   CAN2_RX0_IRQHandler        /* CAN2 RX0 */
//   .weak   CAN2_RX1_IRQHandler        /* CAN2 RX1 */
//   .weak   CAN2_SCE_IRQHandler        /* CAN2 SCE */
//   .weak   OTG_FS_IRQHandler          /* OTGFS */
//   .weak   USBHSWakeup_IRQHandler     /* USBHS Wakeup */
//   .weak   USBHS_IRQHandler           /* USBHS */
//   .weak   DVP_IRQHandler             /* DVP */
//   .weak   UART6_IRQHandler           /* UART6 */
//   .weak   UART7_IRQHandler           /* UART7 */
//   .weak   UART8_IRQHandler           /* UART8 */
//   .weak   TIM9_BRK_IRQHandler        /* TIM9 Break */
//   .weak   TIM9_UP_IRQHandler         /* TIM9 Update */
//   .weak   TIM9_TRG_COM_IRQHandler    /* TIM9 Trigger and Commutation */
//   .weak   TIM9_CC_IRQHandler         /* TIM9 Capture Compare */
//   .weak   TIM10_BRK_IRQHandler       /* TIM10 Break */
//   .weak   TIM10_UP_IRQHandler        /* TIM10 Update */
//   .weak   TIM10_TRG_COM_IRQHandler   /* TIM10 Trigger and Commutation */
//   .weak   TIM10_CC_IRQHandler        /* TIM10 Capture Compare */
//   .weak   DMA2_Channel6_IRQHandler   /* DMA2 Channel 6 */
//   .weak   DMA2_Channel7_IRQHandler   /* DMA2 Channel 7 */
//   .weak   DMA2_Channel8_IRQHandler   /* DMA2 Channel 8 */
//   .weak   DMA2_Channel9_IRQHandler   /* DMA2 Channel 9 */
//   .weak   DMA2_Channel10_IRQHandler  /* DMA2 Channel 10 */
//   .weak   DMA2_Channel11_IRQHandler  /* DMA2 Channel 11 */

/*******************************************************************************
* Function Name  : NMI_Handler
* Description    : This function handles NMI exception.
* Input          : None
* Return         : None
*******************************************************************************/
void NMI_Handler(void)
{
}

/*******************************************************************************
* Function Name  : HardFault_Handler
* Description    : This function handles Hard Fault exception.
* Input          : None
* Return         : None
*******************************************************************************/
void HardFault_Handler(void)
{
//  while (1)
//  {
//  }
}


