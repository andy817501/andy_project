#ifndef _L610_H_
#define _L610_H_




#define REV_OK      0   //接收完成标志
#define REV_WAIT    1   //接收未完成标志

                                                                                                  

_Bool L610_SendCmd(char *cmd,char *res);
void L610_Clear(void);

void L610_SendData(unsigned char *data, unsigned short len);

unsigned char *L610_GetIPD(unsigned short timeOut);
void L610_to_server(short beep,short go,short penwu,short numb,short ethyl);
void uart_rx_interrupt_handler (void);
unsigned char *makejson(unsigned char*cmd);
void jsondata(unsigned char *cmd);
#endif
