/*
 * usart.h
 */

#ifndef __USART_H
#define __USART_H

#include <stm32f4xx.h>

enum{
	B19200,
	B57600,
	B115200,
	B9600,
	B1M,
	B2M
};

#define BAUDRATES 7	//Numero di baudrates disponibili

// defines with 42MHz clock of peripheral clock
#define B19200_MANTISSA         136
#define B19200_FRACTIONAL       12

// B57600 = 42000000.0/(16 * (45 + 9.0/16))
#define B57600_MANTISSA         45
#define B57600_FRACTIONAL       9

// B115200 = 42000000.0/(16 * (22 + 13.0/16))
#define B115200_MANTISSA        22
#define B115200_FRACTIONAL      13

//Nuovi Baudrates
//BAUD = F/(16 * DIV)
//DIV = F/(16 * BAUD)

#define B9600_MANTISSA					273
#define B9600_FRACTIONAL				7		//0.5 --> DIV = 312.5

#define B1M_MANTISSA					2
#define B1M_FRACTIONAL				10

#define B2M_MANTISSA					1
#define B2M_FRACTIONAL				5

void USART_init(USART_TypeDef * usart, int baud_rate);
void USART_putc(USART_TypeDef * usart, char c);
char USART_getc(USART_TypeDef * usart);
int USART_ready(USART_TypeDef * usart);


#endif
