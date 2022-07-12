
#define PID_SCALE  0.05f  //PID缩放系数
#define PID_INTEGRAL_UP 1000  //积分上限

float ax_motor_kp_a=150;
float ax_motor_ki_a=0.1;
float ax_motor_kd_a=0.5 ;

float ax_motor_kp_b=150;
float ax_motor_ki_b=0.1;
float ax_motor_kd_b=0.5 ;

float ax_motor_kp_c=150  ;
float ax_motor_ki_c=0.1;
float ax_motor_kd_c=0.5 ;

float ax_motor_kp_d=150;
float ax_motor_ki_d=0.1;
float ax_motor_kd_d=0.5 ;


/**
  * @简  述  电机A PID控制函数
  * @参  数  spd_target:编码器速度目标值 
  *          spd_target: 编码器速度当前值
  * @返回值  电机PWM速度
  */
  short MID_MotorVelocityPidCtl_A(short spd_target, short spd_current)
{

	static short motor_pwm_out;
	static int bias,bias_last,bias_integral = 0;
	
	bias = spd_target - spd_current;
	
	bias_integral += bias;
	
	if(bias_integral>PID_INTEGRAL_UP)bias_integral = PID_INTEGRAL_UP;
	if(bias_integral<-PID_INTEGRAL_UP)bias_integral = -PID_INTEGRAL_UP;
	
	motor_pwm_out += ax_motor_kp_a*bias*PID_SCALE + ax_motor_kd_a*(bias-bias_last)*PID_SCALE + ax_motor_ki_a*bias_integral*PID_SCALE;
	
	bias_last = bias;
	
	return motor_pwm_out;
}	
  
/**
  * @简  述  电机B PID控制函数
  * @参  数  spd_target:编码器速度目标值 
  *          spd_target: 编码器速度当前值
  * @返回值  电机PWM速度
  */
short MID_MotorVelocityPidCtl_B(short spd_target,short spd_current)
{


	static short motor_pwm_out;
	static int bias,bias_last,bias_integral = 0;
	

	bias = spd_target - spd_current;
	
	bias_integral += bias;
	
	if(bias_integral>PID_INTEGRAL_UP)bias_integral = PID_INTEGRAL_UP;
	if(bias_integral<-PID_INTEGRAL_UP)bias_integral = -PID_INTEGRAL_UP;
	
	motor_pwm_out += ax_motor_kp_b*bias*PID_SCALE + ax_motor_kd_b*(bias-bias_last)*PID_SCALE + ax_motor_ki_b*bias_integral*PID_SCALE;
	
	bias_last = bias;

	return motor_pwm_out;
}

/**
  * @简  述  电机C PID控制函数
  * @参  数  spd_target:编码器速度目标值 
  *          spd_target: 编码器速度当前值
  * @返回值  电机PWM速度
  */
short MID_MotorVelocityPidCtl_C(short spd_target, short spd_current)
{
	static short motor_pwm_out;
	static int bias,bias_last,bias_integral = 0;
	
	bias = spd_target - spd_current;
	
	bias_integral += bias;
	
	if(bias_integral>PID_INTEGRAL_UP)bias_integral = PID_INTEGRAL_UP;
	if(bias_integral<-PID_INTEGRAL_UP)bias_integral = -PID_INTEGRAL_UP;
	
	motor_pwm_out += ax_motor_kp_c*bias*PID_SCALE + ax_motor_kd_c*(bias-bias_last)*PID_SCALE + ax_motor_ki_c*bias_integral*PID_SCALE;
	
	bias_last = bias;
	
	return motor_pwm_out;
}

/**
  * @简  述  电机D PID控制函数
  * @参  数  spd_target:编码器速度目标值 
  *          spd_target: 编码器速度当前值
  * @返回值  电机PWM速度
  */
short MID_MotorVelocityPidCtl_D(short spd_target, short spd_current)
{
	static short motor_pwm_out;
	static int bias,bias_last,bias_integral = 0;
	
	bias = spd_target - spd_current;
	
	bias_integral += bias;
	
	if(bias_integral>PID_INTEGRAL_UP)bias_integral = PID_INTEGRAL_UP;
	if(bias_integral<-PID_INTEGRAL_UP)bias_integral = -PID_INTEGRAL_UP;
	
	motor_pwm_out += ax_motor_kp_d*bias*PID_SCALE + ax_motor_kd_d*(bias-bias_last)*PID_SCALE + ax_motor_ki_d*bias_integral*PID_SCALE;
	
	bias_last = bias;
	
	return motor_pwm_out;
	
}


