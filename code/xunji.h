#ifndef XUNJI_H_
#define XUNJI_H_
#define Read_P1_left     gpio_get_level(E1)
#define Read_p2_break    gpio_get_level(E2)
#define Read_p3_front    gpio_get_level(E3)
#define Read_p4_right    gpio_get_level(E4)
#define zzh             gpio_get_level(D2)
#define taozi            gpio_get_level(E5)

void xunji_init(void);
void xunji_go_back(void);
void xunji_go(void);
//float get_distance(void);
//void TIM9_CH1_Cap_Init(u32 arr,u16 psc);
//void bizhang_Init(void);
#endif
