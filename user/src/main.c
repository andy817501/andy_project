#include "zf_common_headfile.h"
#include "xunji.h"
#include "data.h"
#include  "main.h"
#define L610_TXYUN_INFO     "AT+TCDEVINFOSET=1,\"3DIZ9YUBWB\",\"L610\",\"gZ6MUWCaElK0TEIjhAXfjA==\"\r\n"
#define L610_ONENET_INFO        "AT+TCMQTTCONN=1,20000,240,1,1\r\n"
#define L610_topic_INFO     "AT+TCMQTTSUB=\"$thing/down/property/3DIZ9YUBWB/L610\",1\r\n"
#define UART_INDEX              DEBUG_UART_INDEX                                // 默认 UART_1
#define UART_BAUDRATE           DEBUG_UART_BAUDRATE                             // 默认 115200
#define UART_TX_PIN             DEBUG_UART_TX_PIN                               // 默认 UART3_TX_B10
#define UART_RX_PIN             DEBUG_UART_RX_PIN                               // 默认 UART3_RX_B11
#define UART_PRIORITY           USART1_IRQn                                      // 对应串口中断的中断编号 在 mm32f3277gx.h 头文件中查看 IRQn_Type 枚举体

uint8 L610_buf[128];                                                        // fifo 输出读出缓冲区
unsigned char *dataPtr = NULL;
uint32 L610_cnt = 0;
int16_t encoder_data[3];
extern  short  test_tube_nume;
short beep_flag=0,go_flag=0,xiaodu_flag=0,ethyl_numb,andy=0,first,second,timeout,timeout1;
int main(void)
{
//    short timeCount = 0;
    interrupt_global_disable();            // 关闭总中断
    clock_init(SYSTEM_CLOCK_144M);      // 务必保留，设置系统时钟。
    debug_init();                       // 务必保留，本函数用于初始化MPU 时钟 调试串口
    adc_init(ADC_IN4_A4);             //初始化ad通道0;
    xunji_init();
    interrupt_set_priority(UART_PRIORITY, 1);                                   // 设置对应 UART_INDEX 的中断优先级为 0
  all_gpio_init();
   all_PWM_Init(50, 1000);
   timer_start(TIM_6,TIMER_MS);          //定时中断一
//   timer_start_break(TIM_7,TIMER_MS);  //定时中断二
all_encoder_Init();
shiguan_init();
    interrupt_global_enable();            // 总中断最后开启
//    TIM9_CH1_Cap_Init(0XFFFFFFFF,84-1);
//    bizhang_Init();
// set_l610_Init();

while(1)
   {
    ethyl_numb=date_get();
//if(++timeCount >= 2000)
//{
//
//L610_to_server(beep_flag,go_flag, xiaodu_flag, test_tube_nume, ethyl_numb);
//timeCount = 0;
//}

//   if(L610_buf!=NULL)
//    {
//    dataPtr=L610_GetIPD(3);
//    }
//      if(dataPtr!=NULL)
//   {
//          dataPtr=makejson(dataPtr);
//          jsondata(dataPtr);
//   }


if(andy==0)
{
    go_flow();
}
if(andy==1)
{
    back_flow();
}



 }

}

//}


void uart_rx_interrupt_handler (void)
{
    if(L610_cnt >= sizeof(L610_buf))    L610_cnt = 0; //防止串口被刷爆
    L610_buf[L610_cnt++] = USART_ReceiveData(USART1);
}


void set_l610_Init(void)
{
  do{ clear_buff();
  printf("AT+MIPCALL=1\r\n");
  delay_ms(1000);
}
  while(strstr((const char *)L610_buf, "+MIPCALL: ") == NULL);
do{clear_buff();
printf(L610_TXYUN_INFO);
delay_ms(2000);
}
while(strstr((const char *)L610_buf, "OK") == NULL);
do{clear_buff();
printf(L610_ONENET_INFO);
delay_ms(2000);
}
while(strstr((const char *)L610_buf, "OK") == NULL);
do{
    clear_buff();
printf(L610_topic_INFO);
delay_ms(2000);
}
while(strstr((const char *)L610_buf, "OK") == NULL);
uart_tx_interrupt(UART_1, DISABLE);
}

void go_flow(void)
{

    if(test_tube_nume>=3&&first==0)
    {
        gpio_set_level(D0,1);
        beep_flag=1;
        first=1;
        L610_to_server(beep_flag,go_flag, xiaodu_flag, test_tube_nume, ethyl_numb);
    }
    if(beep_flag==1)
    {
      gpio_set_level(C11,0);
      beep_flag=0;
      go_flag=1;
      L610_to_server(beep_flag,go_flag, xiaodu_flag, 3, ethyl_numb);
  delay_ms(2000);
      L610_to_server(beep_flag,go_flag, xiaodu_flag, 3, ethyl_numb);
    }
    if(go_flag==1)
    {

    xunji_go();
    }

    if(xiaodu_flag==1)
    {
       gpio_set_level(C10, 0);
       gpio_set_level(C0, 1);

    if(timeout1>=60)
    {gpio_set_level(C10, 1);
    gpio_set_level(C0, 0);
    gpio_set_level(D0, 0);
    andy=1;
    xiaodu_flag=0;
    L610_to_server(beep_flag,go_flag, xiaodu_flag, 3, ethyl_numb);
    }
    else{  delay_ms(100);
    timeout1++;
    L610_to_server(beep_flag,go_flag, xiaodu_flag, 3, ethyl_numb);
    }



    }
}


void back_flow(void)
{

    if(test_tube_nume==0&&second==0)
    {gpio_set_level(D0, 1);
        beep_flag=1;
        L610_to_server(beep_flag,go_flag, xiaodu_flag, 0, ethyl_numb);

        second=1;
    }
    if(beep_flag==1)
    {
      gpio_set_level(C12, 0);
      beep_flag=0;
      go_flag=1;
      delay_ms(2000);
      L610_to_server(beep_flag,go_flag, xiaodu_flag, 0, ethyl_numb);

    }
    if(  go_flag==1)
    {

xunji_go_back();
    }

    if(xiaodu_flag==1)
    {
       gpio_set_level(C10, 0);
       gpio_set_level(C0, 1);

    if(timeout>=60)
    {gpio_set_level(C10, 1);
    gpio_set_level(C0, 0);
    gpio_set_level(D0, 0);
    andy=0;
    xiaodu_flag=0;
    L610_to_server(beep_flag,go_flag, xiaodu_flag, 0, ethyl_numb);
    }
    else{  delay_ms(100);
    timeout++;
    L610_to_server(beep_flag,go_flag, xiaodu_flag, 0, ethyl_numb);
    }



    }
}



void clear_buff(void)
{

    memset(L610_buf, 0, sizeof(L610_buf));
    L610_cnt=0;
}
