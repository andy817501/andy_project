#include "zf_common_headfile.h"
//extern short p1_left,p4_rignt;
#include "xunji.h"
#include "main.h"
// extern unsigned char  TIM9CH1_CAPTURE_STA;  //���벶��״̬
// extern unsigned int TIM9CH1_CAPTURE_VAL;    //���벶��ֵ(TIM2/TIM9��32λ)
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
//            EXTI_InitStructure.EXTI_Trigger = EXTI_Trigger_Falling; //����Ϊ�ߵ�ƽ����������
//            EXTI_InitStructure.EXTI_LineCmd = ENABLE;
//            EXTI_Init(&EXTI_InitStructure);
//            NVIC_InitStructure.NVIC_IRQChannel = EXTI2_IRQn ;
//            NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority = 1; //��ռ���ȼ�
//            NVIC_InitStructure.NVIC_IRQChannelSubPriority =3 ;        //�����ȼ�
//            NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;
//            NVIC_Init(&NVIC_InitStructure);
//
//            /* GPIOE ----> EXTI_Line4 */
//            GPIO_EXTILineConfig(GPIO_PortSourceGPIOE,GPIO_PinSource4);
//            EXTI_InitStructure.EXTI_Line=EXTI_Line4;
//            EXTI_InitStructure.EXTI_Mode = EXTI_Mode_Interrupt;
//            EXTI_InitStructure.EXTI_Trigger = EXTI_Trigger_Falling; //����Ϊ�ߵ�ƽ����������
//            EXTI_InitStructure.EXTI_LineCmd = ENABLE;
//            EXTI_Init(&EXTI_InitStructure);
//            NVIC_InitStructure.NVIC_IRQChannel = EXTI4_IRQn ;
//            NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority = 1; //��ռ���ȼ�
//            NVIC_InitStructure.NVIC_IRQChannelSubPriority = 3;        //�����ȼ�
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
//        RCC_APB2PeriphClockCmd(RCC_APB2Periph_TIM9,ENABLE);     //TIM9ʱ��ʹ��
//        RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOE, ENABLE);   //ʹ��PORTAʱ��
//
//        GPIO_InitStructure.GPIO_Pin = GPIO_Pin_5; //GPIOE5
//        GPIO_InitStructure.GPIO_Mode =GPIO_Mode_Out_PP;//���ù���
//        GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;  //�ٶ�100MHz
//        GPIO_Init(GPIOE,&GPIO_InitStructure); //��ʼ��PA0
//
//        GPIO_PinRemapConfig(GPIO_Remap_TIM9,ENABLE);
//        TIM_TimeBaseStructure.TIM_Prescaler=psc;  //��ʱ����Ƶ
//        TIM_TimeBaseStructure.TIM_CounterMode=TIM_CounterMode_Up; //���ϼ���ģʽ
//        TIM_TimeBaseStructure.TIM_Period=arr;   //�Զ���װ��ֵ
//        TIM_TimeBaseStructure.TIM_ClockDivision=TIM_CKD_DIV1;
//
//        TIM_TimeBaseInit(TIM9,&TIM_TimeBaseStructure);
//
//
//        //��ʼ��TIM9���벶�����
//        TIM9_ICInitStructure.TIM_Channel = TIM_Channel_1; //CC1S=01     ѡ������� IC1ӳ�䵽TI1��
//        TIM9_ICInitStructure.TIM_ICPolarity = TIM_ICPolarity_Rising;    //�����ز���
//        TIM9_ICInitStructure.TIM_ICSelection = TIM_ICSelection_DirectTI; //ӳ�䵽TI1��
//        TIM9_ICInitStructure.TIM_ICPrescaler = TIM_ICPSC_DIV1;   //���������Ƶ,����Ƶ
//        TIM9_ICInitStructure.TIM_ICFilter = 0x00;//IC1F=0000 ���������˲��� ���˲�
//        TIM_ICInit(TIM9, &TIM9_ICInitStructure);
//
//        TIM_ITConfig(TIM9,TIM_IT_Update|TIM_IT_CC1,ENABLE);//��������ж� ,����CC1IE�����ж�
//
//        TIM_Cmd(TIM9,ENABLE );  //ʹ�ܶ�ʱ��5
//        NVIC_InitStructure.NVIC_IRQChannel =TIM9_UP_IRQn;
//        NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority=2;//��ռ���ȼ�3
//        NVIC_InitStructure.NVIC_IRQChannelSubPriority =0;       //�����ȼ�3
//        NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;         //IRQͨ��ʹ��
//        NVIC_Init(&NVIC_InitStructure); //����ָ���Ĳ�����ʼ��VIC�Ĵ���
//}
//
//
//
//void bizhang_Init(void)
//{
//  GPIO_InitTypeDef  GPIO_InitStructure;
//
//  RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOE, ENABLE);   //ʹ��PORTeʱ��
//
//  //GPIOF9,F1��ʼ������
//  GPIO_InitStructure.GPIO_Pin = GPIO_Pin_6;
//  GPIO_InitStructure.GPIO_Mode = GPIO_Mode_Out_PP;
//  GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
//  GPIO_Init(GPIOE, &GPIO_InitStructure);//��ʼ��
//    GPIO_ResetBits(GPIOE,GPIO_Pin_4);//��ʼ��GPIOF1Ϊ�͵�ƽ
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
//            if(TIM9CH1_CAPTURE_STA&0X80)        //�ɹ�������һ�θߵ�ƽ
//            {
//                temp=TIM9CH1_CAPTURE_STA&0X3F;
//                temp*=0XFFFFFFFF;                        //���ʱ���ܺ�
//                temp+=TIM9CH1_CAPTURE_VAL;         //�õ��ܵĸߵ�ƽʱ��
//                temp = temp * 17/1000; //�õ�����
//                TIM9CH1_CAPTURE_STA=0;               //������һ�β���
//                complete = 1;
// return temp;
//            }
//     }
//}



