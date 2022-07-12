#include "zf_common_headfile.h"
//extern short p1_left,p4_rignt;
#include "xunji.h"
#include "main.h"
// extern unsigned char  TIM9CH1_CAPTURE_STA;  //输入捕获状态
// extern unsigned int TIM9CH1_CAPTURE_VAL;    //输入捕获值(TIM2/TIM9是32位)
short two=2,one=2;
extern short  go_flag,xiaodu_flag;
extern short beep_flag,go_flag,xiaodu_flag,ethyl_numb,test_tube_nume;
void xunji_init(void)
{NVIC_PriorityGroupConfig(NVIC_PriorityGroup_2);
            GPIO_InitTypeDef  GPIO_InitStructure;
//            EXTI_InitTypeDef EXTI_InitStructure;
//            NVIC_InitTypeDef NVIC_InitStructure;
            RCC_APB2PeriphClockCmd(RCC_APB2Periph_AFIO|RCC_APB2Periph_GPIOE,ENABLE);
            GPIO_InitStructure.GPIO_Pin = GPIO_Pin_1|GPIO_Pin_2|GPIO_Pin_3|GPIO_Pin_4|GPIO_Pin_5;
            GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AIN|GPIO_Mode_IPD;

            GPIO_Init(GPIOE, &GPIO_InitStructure);
            gpio_init(D2, GPI, 0, GPIO_Mode_AIN|GPIO_Mode_IPD);
//        /* GPIOE ----> EXTI_Line2 */
//            GPIO_EXTILineConfig(GPIO_PortSourceGPIOE,GPIO_PinSource2);
//            EXTI_InitStructure.EXTI_Line=EXTI_Line2;
//            EXTI_InitStructure.EXTI_Mode = EXTI_Mode_Interrupt;
//            EXTI_InitStructure.EXTI_Trigger = EXTI_Trigger_Falling; //按下为高电平，用上升沿
//            EXTI_InitStructure.EXTI_LineCmd = ENABLE;
//            EXTI_Init(&EXTI_InitStructure);
//            NVIC_InitStructure.NVIC_IRQChannel = EXTI2_IRQn ;
//            NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority = 1; //抢占优先级
//            NVIC_InitStructure.NVIC_IRQChannelSubPriority =3 ;        //子优先级
//            NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;
//            NVIC_Init(&NVIC_InitStructure);
//
//            /* GPIOE ----> EXTI_Line4 */
//            GPIO_EXTILineConfig(GPIO_PortSourceGPIOE,GPIO_PinSource4);
//            EXTI_InitStructure.EXTI_Line=EXTI_Line4;
//            EXTI_InitStructure.EXTI_Mode = EXTI_Mode_Interrupt;
//            EXTI_InitStructure.EXTI_Trigger = EXTI_Trigger_Falling; //按下为高电平，用上升沿
//            EXTI_InitStructure.EXTI_LineCmd = ENABLE;
//            EXTI_Init(&EXTI_InitStructure);
//            NVIC_InitStructure.NVIC_IRQChannel = EXTI4_IRQn ;
//            NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority = 1; //抢占优先级
//            NVIC_InitStructure.NVIC_IRQChannelSubPriority = 3;        //子优先级
//            NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;
//            NVIC_Init(&NVIC_InitStructure);
}


void xunji_go(void)

{
if((Read_P1_left==1&&Read_p2_break==1)&&two==2)
{
 MOVE_Kinematics(00, 50, 00);
}
if(Read_P1_left==0||two==0)
{
    two=0;
 MOVE_Kinematics(20, 00, 00);
 if(taozi==1)
 {
 MOVE_Kinematics(00, 00, 00);
     two=1;
     go_flag=0;
     xiaodu_flag=1;
     L610_to_server(beep_flag,go_flag, xiaodu_flag, test_tube_nume, ethyl_numb);
 }
}
}



void xunji_go_back(void)
{
if(one==2)
{
    MOVE_Kinematics(00, 50, 00);
}

if((Read_p2_break==0||one==0)&&(one!=1)&&(one!=3))
{
    one=0;
 MOVE_Kinematics(00, 00, -20);
}
if((Read_p3_front==0&&Read_p4_right==0&&Read_P1_left)||one==3)
{
    one=3;
    MOVE_Kinematics(00, 50, 00);
}

 if(taozi==1&&one==3&&zzh==1)
 {
 MOVE_Kinematics(00, 00, 00);
   one=1;
   go_flag=0;
   xiaodu_flag=1;
   L610_to_server(beep_flag,go_flag, xiaodu_flag, test_tube_nume, ethyl_numb);
   gpio_set_level(C12, 1);
 }

}
//
//void TIM9_CH1_Cap_Init(u32 arr,u16 psc)
//{
//
//    GPIO_InitTypeDef GPIO_InitStructure;
//        TIM_TimeBaseInitTypeDef  TIM_TimeBaseStructure;
//        TIM_ICInitTypeDef  TIM9_ICInitStructure;
//        NVIC_InitTypeDef NVIC_InitStructure;
//
//        RCC_APB2PeriphClockCmd(RCC_APB2Periph_TIM9,ENABLE);     //TIM9时钟使能
//        RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOE, ENABLE);   //使能PORTA时钟
//
//        GPIO_InitStructure.GPIO_Pin = GPIO_Pin_5; //GPIOE5
//        GPIO_InitStructure.GPIO_Mode =GPIO_Mode_Out_PP;//复用功能
//        GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;  //速度100MHz
//        GPIO_Init(GPIOE,&GPIO_InitStructure); //初始化PA0
//
//        GPIO_PinRemapConfig(GPIO_Remap_TIM9,ENABLE);
//        TIM_TimeBaseStructure.TIM_Prescaler=psc;  //定时器分频
//        TIM_TimeBaseStructure.TIM_CounterMode=TIM_CounterMode_Up; //向上计数模式
//        TIM_TimeBaseStructure.TIM_Period=arr;   //自动重装载值
//        TIM_TimeBaseStructure.TIM_ClockDivision=TIM_CKD_DIV1;
//
//        TIM_TimeBaseInit(TIM9,&TIM_TimeBaseStructure);
//
//
//        //初始化TIM9输入捕获参数
//        TIM9_ICInitStructure.TIM_Channel = TIM_Channel_1; //CC1S=01     选择输入端 IC1映射到TI1上
//        TIM9_ICInitStructure.TIM_ICPolarity = TIM_ICPolarity_Rising;    //上升沿捕获
//        TIM9_ICInitStructure.TIM_ICSelection = TIM_ICSelection_DirectTI; //映射到TI1上
//        TIM9_ICInitStructure.TIM_ICPrescaler = TIM_ICPSC_DIV1;   //配置输入分频,不分频
//        TIM9_ICInitStructure.TIM_ICFilter = 0x00;//IC1F=0000 配置输入滤波器 不滤波
//        TIM_ICInit(TIM9, &TIM9_ICInitStructure);
//
//        TIM_ITConfig(TIM9,TIM_IT_Update|TIM_IT_CC1,ENABLE);//允许更新中断 ,允许CC1IE捕获中断
//
//        TIM_Cmd(TIM9,ENABLE );  //使能定时器5
//        NVIC_InitStructure.NVIC_IRQChannel =TIM9_UP_IRQn;
//        NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority=2;//抢占优先级3
//        NVIC_InitStructure.NVIC_IRQChannelSubPriority =0;       //子优先级3
//        NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;         //IRQ通道使能
//        NVIC_Init(&NVIC_InitStructure); //根据指定的参数初始化VIC寄存器
//}
//
//
//
//void bizhang_Init(void)
//{
//  GPIO_InitTypeDef  GPIO_InitStructure;
//
//  RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOE, ENABLE);   //使能PORTe时钟
//
//  //GPIOF9,F1初始化设置
//  GPIO_InitStructure.GPIO_Pin = GPIO_Pin_6;
//  GPIO_InitStructure.GPIO_Mode = GPIO_Mode_Out_PP;
//  GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
//  GPIO_Init(GPIOE, &GPIO_InitStructure);//初始化
//    GPIO_ResetBits(GPIOE,GPIO_Pin_4);//初始化GPIOF1为低电平
//}
//
//
//float get_distance(void)
//{
//float temp=0;
//u8 complete = 1;
//if(complete == 1)
//             {
//    gpio_set_level(E6,1);
//            delay_us(15);
//            gpio_set_level(E6,0);
//            complete = 0;
//             }
//        while(complete == 0)
//        {
//            if(TIM9CH1_CAPTURE_STA&0X80)        //成功捕获到了一次高电平
//            {
//                temp=TIM9CH1_CAPTURE_STA&0X3F;
//                temp*=0XFFFFFFFF;                        //溢出时间总和
//                temp+=TIM9CH1_CAPTURE_VAL;         //得到总的高电平时间
//                temp = temp * 17/1000; //得到距离
//                TIM9CH1_CAPTURE_STA=0;               //开启下一次捕获
//                complete = 1;
// return temp;
//            }
//     }
//}



