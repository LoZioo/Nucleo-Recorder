/*
 * timers.h
 */

#ifndef __TIMERS_H
#define __TIMERS_H

#include <stm32f4xx.h>

typedef enum {
	IC_RISING_EDGE,
	IC_FALLING_EDGE,
	IC_BOTH_EDGES
} IC_Mode;

typedef enum {	//Vd. pg. (300)
	OC_FROZEN,
	OC_HIGH_ON_MATCH,
	OC_LOW_ON_MATCH,
	OC_TOGGLE,
	OC_FORCE_HIGH,
	OC_FORCE_LOW,
	OC_PWM,
	OC_REVERSE_PWM
} OC_Mode;

typedef enum {
	OC_ACTIVE_HIGH,
	OC_ACTIVE_LOW
} OC_Polarity;

#define IRQ_UPDATE  0x0001
#define IRQ_CC_1	0x0002
#define IRQ_CC_2	0x0004
#define IRQ_CC_3	0x0008
#define IRQ_CC_4	0x0010

void TIM_init(TIM_TypeDef * tim);
void TIM_config_timebase(TIM_TypeDef * tim, uint16_t prescaler, uint32_t autoreload);
void TIM_enable_irq(TIM_TypeDef * tim, int irq_type);
void TIM_config_IC(TIM_TypeDef * tim, int chan, IC_Mode icmode);
void TIM_config_PWM(TIM_TypeDef * tim, int chan);

//Nuove funzioni
void TIM_config_OC(TIM_TypeDef * tim, int chan, OC_Mode ocmode);	//Output compare mode: vd. pg. 335
void TIM_set_CCR_val(TIM_TypeDef * tim, int chan, int val);	//Settaggio valore di confronto: vd. pg. 335
void TIM_set_OC_polarity(TIM_TypeDef * tim, int chan, OC_Polarity pol);	//Settaggio polarita': vd. pg. 299
//--------------

#define TIM_set(tim,c) 		{ tim->CNT = c; }
#define TIM_get(tim) 		tim->CNT
#define TIM_on(tim) 		{ tim->CR1 |= 1; tim->SR = 0; }
#define TIM_off(tim)		{ tim->CR1 &= 0xfffe; }
#define TIM_update_check(tim) 	((tim->SR & 1) == 1)
#define TIM_update_clear(tim) 	{ tim->SR &= 0xfffe; }
#define TIM_cc_check(tim,chan)	((tim->SR & (1 << chan)) != 0 && (tim->DIER & (1 << chan)) != 0)
#define TIM_cc_clear(tim,chan) 	{ tim->SR &= ~(uint32_t)(1 << chan); }

//Nuove macro
#define TIM_enable_OC(tim,chan) { tim->CCER |= (1<<((chan-1)*4)); }	//Abilitazione OC mode: vd. pg. 299
//-----------

#endif
