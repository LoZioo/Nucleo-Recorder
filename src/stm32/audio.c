#include <stdio.h>
#include <string.h>
#include <math.h>
#include "stm32_unict_lib.h"

enum{
	REC,
	STOP
};

int state=STOP, n;
char str[5];

int main(){
	DISPLAY_init();
	CONSOLE_init(B1M);

	GPIO_init(GPIOA);
	GPIO_init(GPIOB);
	GPIO_init(GPIOC);

	GPIO_config_output(GPIOB,0);	//Rosso
	GPIO_config_output(GPIOC,2);	//Giallo
	GPIO_config_output(GPIOC,3);	//Verde
	GPIO_config_output(GPIOB,8);	//':' Display

	GPIO_config_input(GPIOB,10);	//X
	GPIO_config_input(GPIOB,4);		//Y
	GPIO_config_input(GPIOB,5);		//Z
	GPIO_config_input(GPIOB,6);		//T

	GPIO_config_EXTI(GPIOB,EXTI10);
	EXTI_enable(EXTI10,FALLING_EDGE);

	GPIO_config_EXTI(GPIOB,EXTI4);
	EXTI_enable(EXTI4,FALLING_EDGE);

	GPIO_config_EXTI(GPIOB,EXTI5);
	EXTI_enable(EXTI5,FALLING_EDGE);

	GPIO_config_EXTI(GPIOB,EXTI6);
	EXTI_enable(EXTI6,FALLING_EDGE);
	
	//Inizializzazione TIM2 per il campionamento
	TIM_init(TIM2);
	
	//Campionamento a 32000Hz
	//(84MHz/2625)*1=32kHz
	//PSC=2625, ARR=1
	TIM_config_timebase(TIM2,2625,1);
	
	//Configurazione dell'evento di campionamento ad ogni tick di TIM2
	TIM_set_CCR_val(TIM2,2,0);
	
	//Ad ogni tick, inverti il segnale di trigger per l'ADC
	TIM_config_OC(TIM2,2,OC_TOGGLE);
	TIM_set_OC_polarity(TIM2,2,OC_ACTIVE_HIGH);
	
	//TIM2 pronto
	TIM_enable_OC(TIM2,2);
	
	//Inizializzazione ADC1 a 12 bit con allineamento a destra
	ADC_init(ADC1,ADC_RES_12,ADC_ALIGN_RIGHT);
	
	//Collegamento del pin PA0 sull'ingresso ADC1_IN0
	ADC_channel_config(ADC1,GPIOA,0,0);
	
	//Selezione di ADC1_IN0 (PA0)
	ADC_sample_channel(ADC1,0);
	
	//Abilito l'interrupt software di fine campionamento
	ADC_enable_irq(ADC1);
	
	//Avvia un'acquisizione ogni inversione del segnale di trigger
	ADC_EXT_trig_source(ADC1,TRIG_BOTH_EDGES);
	
	//Il segnale di trigger proviene da TIM2
	ADC_EXT_trig_mode(ADC1,TIM2_CC2);
	
	//Attiva l'ADC1
	ADC_on(ADC1);

	for(;;){
		switch(state){
			case REC:
				sprintf(str,"%4d",n);
				DISPLAY_puts(0,str);
				break;

			case STOP:
				sprintf(str,"STOP");
				DISPLAY_puts(0,str);
				while(state==STOP);
				break;
		}

		delay_ms(50);
	}
}

void button(){
	switch(state){
		case REC:
			state=STOP;
			GPIO_write(GPIOB,0,0);
			TIM_off(TIM2);
			break;

		case STOP:
			state=REC;
			GPIO_write(GPIOB,0,1);
			TIM_set(TIM2,0);
			TIM_on(TIM2);
			break;
	}
}

//Il bit del segno, se negativo, indica la parte alta del numero a 16 bit.
void write_12(uint16_t data){
	__io_putchar((uint8_t)((data>>6) | (1<<7)));
	__io_putchar(((uint8_t)data) & ((1<<6)-1));
}

void ADC_IRQHandler(){
	if(ADC_isset(ADC1)){
		n=ADC_read(ADC1);
		write_12(n);
		ADC_clear(ADC1);
	}
}

void EXTI15_10_IRQHandler(){ 	//X
	if(EXTI_isset(EXTI10)){
		button();
		EXTI_clear(EXTI10);
	}
}

void EXTI4_IRQHandler(){ 			//Y
	if(EXTI_isset(EXTI4)){
		button();
		EXTI_clear(EXTI4);
	}
}

void EXTI9_5_IRQHandler(){		//Z
	if(EXTI_isset(EXTI5)){
		button();
		EXTI_clear(EXTI5);
	}

	if(EXTI_isset(EXTI6)){			//T
		button();
		EXTI_clear(EXTI6);
	}
}
