/*
 * console.c
 *
 *  Created on: Sep 30, 2017
 *      Author: corrado
 */


#include "console.h"
#include "usart.h"
#include "gpio.h"

void CONSOLE_init(int baud_rate)
{
		if(baud_rate==-1)
			baud_rate=B115200;

    /* Enable GPIOA clock */
    RCC->AHB1ENR |= RCC_AHB1ENR_GPIOAEN;

    // PA2 is USART2_TX
    GPIO_ALTERNATE(GPIOA, 2);
    GPIO_SPEED_LOW(GPIOA, 2);
    GPIO_PUSH_PULL(GPIOA, 2);
    GPIO_NO_PUPD(GPIOA, 2);
    GPIO_AFL(GPIOA, 2, AF_USART1_2);

    // PA3 is USART2_RX
    GPIO_ALTERNATE(GPIOA, 3);
    GPIO_SPEED_LOW(GPIOA, 3);
    GPIO_PUSH_PULL(GPIOA, 3);
    GPIO_NO_PUPD(GPIOA, 3);
    GPIO_AFL(GPIOA, 3, AF_USART1_2);

	USART_init(USART2,baud_rate);
}

int __io_putchar(int ch)
{
	if (ch == '\n')
		USART_putc(USART2,'\r');
	USART_putc(USART2,ch);
	return 1;
}

int kbhit(void)
{
	return USART_ready(USART2);
}

char readchar(void)
{
	return USART_getc(USART2);
}
