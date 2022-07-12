#include "zf_common_headfile.h"
#include "stdlib.h"
#include "L610.h"
#include "cJSON.h"

extern uint8 L610_buf[128];
extern int32 L610_cnt;
unsigned short L610_cntPre = 0;


void L610_Clear(void)
{

    memset(L610_buf, 0, sizeof(L610_buf));
    L610_cnt = 0;

}


_Bool L610_WaitRecive(void)
{

    if(L610_cnt == 0)
        return REV_WAIT;

    if(L610_cnt == L610_cntPre)
    {
        L610_cnt = 0;

        return REV_OK;
    }

    L610_cntPre = L610_cnt;

    return REV_WAIT;

}


_Bool L610_SendCmd(char *cmd, char *res)
{

    unsigned char timeOut = 200;

    uart_write_buffer(UART_INDEX, (unsigned char *)cmd, strlen((const char *)cmd));

    while(timeOut--)
    {
        if(L610_WaitRecive() == REV_OK)
        {


            if(strstr((const char *)L610_buf,(const char  *)res)!=0)
            {
                L610_Clear();

                return 0;
            }
        }

        delay_ms(10);
    }

    return 1;

}




void L610_SendData(unsigned char *data, unsigned short len)
{

    char cmdBuf[32];
    L610_Clear();
    sprintf(cmdBuf, "AT+CIPSEND=1,%d\r\n", len);
    if(!L610_SendCmd(cmdBuf, ">"))
    {
        uart_write_buffer(UART_INDEX, data, len);
    }

}

unsigned char *L610_GetIPD(unsigned short timeOut)
{

    char *ptrIPD = NULL;

    do
    {

            ptrIPD = strstr((char *)L610_buf, "params");
            if(ptrIPD == NULL)
            {
                //UsartPrintf(USART_DEBUG, "\"IPD\" not found\r\n");
            }
            else
            {
                ptrIPD = strchr(ptrIPD, ':');
                if(ptrIPD != NULL)
                {
                    ptrIPD++;
                    return (unsigned char *)(ptrIPD);
                }
                else
                    return NULL;
            }
//        }
        delay_ms(5);
        timeOut--;
    } while(timeOut>0);
    return NULL;
}

//unsigned char *makejson(unsigned char*cmd)
//{
//char *d=(char *)malloc((strlen((const char *)cmd)-1)*sizeof(char));
//  memcpy(d,cmd,(strlen((const char *)cmd)-2));
// return (unsigned char *)(d);
//}


unsigned char *makejson(unsigned char*cmd)
{
char *d=(char *)calloc((strlen((const char *)cmd)-1),2);
  memcpy(d,cmd,(strlen((const char *)cmd)-4));
 return (unsigned char *)(d);
}

void jsondata(unsigned char *cmd)        //JSON数据解析
{
cJSON* json_test;
cJSON* json_go;
//cJSON* json_beep;

json_test=cJSON_Parse(cmd);
if (!json_test)
{

}
else
{
json_go=cJSON_GetObjectItem(json_test,"go");
//json_beep=cJSON_GetObjectItem(json_test,"beep");

if(json_go->valueint==1)
{

}
if(json_go->valueint==2)
{

}

}
cJSON_Delete(json_test);
free(json_test);
//cJSON_free(json_test);
}
void L610_to_server(short beep,short go,short penwu,short numb,short ethyl)
{
            printf("AT+TCMQTTPUB=\"$thing/up/property/3DIZ9YUBWB/L610\",1,\"{\\\"method\\\":\\\"report\\\",\\\"clientToken\\\":\\\"123\\\",\\\"params\\\":{\\\"beep\\\":%d,\\\"go\\\":%d,\\\"penwu\\\":%d,\\\"numb\\\":%d,\\\"ethyl\\\":%d}}\"\r\n",beep,go,penwu,numb,ethyl);

}
