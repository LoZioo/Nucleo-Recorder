/*
 * adc.h
 */

#ifndef __ADCX_H
#define __ADCX_H

#include <stm32f4xx.h>

typedef enum {
	TRIG_DISABLE,
	TRIG_RISING_EDGE,
	TRIG_FALLING_EDGE,
	TRIG_BOTH_EDGES
} ADC_Trig_Mode;

typedef enum {
	TIM1_CC1,
	TIM1_CC2,
	TIM1_CC3,
	TIM2_CC2,
	TIM2_CC3,
	TIM2_CC4,
	TIM2_TRGO,
	TIM3_CC1,
	TIM3_TRGO,
	TIM4_CC4,
	TIM5_CC1,
	TIM5_CC2,
	TIM5_CC3,
	EXTI_11=0xf,
} ADC_Trig_Source;

// adc resolution
#define ADC_RES_12	0
#define ADC_RES_10	1
#define ADC_RES_8	2
#define ADC_RES_6	3

// adc alignment
#define ADC_ALIGN_RIGHT	0
#define ADC_ALIGN_LEFT	1

void ADC_init(ADC_TypeDef * adc, int adc_res, int align);
void ADC_channel_config(ADC_TypeDef * adc, GPIO_TypeDef * port, int pin, int chan);
void ADC_sample_channel(ADC_TypeDef * adc, int chan);
void ADC_start(ADC_TypeDef * adc);

//Nuove funzioni
void ADC_enable_irq(ADC_TypeDef * adc);	//Abilitazione IRQ ADC: vd. pg. 228
void ADC_disable_irq(ADC_TypeDef * adc);
//--------------

#define ADC_on(adc) { adc->CR2 |= 1; }
#define ADC_off(adc) { adc->CR2 &= ~(uint32_t)1; }

#define ADC_completed(adc)	((adc->SR & 2) != 0)
#define ADC_read(adc)	adc->DR

//Nuove macro
#define ADC_isset(adc)	((adc->SR & 2) != 0)
#define ADC_clear(adc)	{ adc->SR &= ~(uint32_t)2; }

#define ADC_enable_continuous_mode(adc)	{ adc->CR2 |= 2; ADC_start(adc); }	//Abilitazione modalita' continua: vd. pg. 216
#define ADC_disable_continuous_mode(adc)	{ adc->CR2 &= ~(uint32_t)2; }

#define ADC_EXT_trig_source(adc,source)	{ adc->CR2 = (adc->CR2 & 0xf0ffffff) | (source<<24); }	//Sorgente di trigger: vd. pg. 232
#define ADC_EXT_trig_mode(adc,mode)	{ adc->CR2 = (adc->CR2 & 0xcfffffff) | (mode<<28); }	//Modalita' di trigger in base all'edge: vd. pg. 232
//-----------

#endif
