/*
 * console.h
 */

#ifndef __CONSOLE_H
#define __CONSOLE_H

#include <stm32f4xx.h>

void CONSOLE_init(int baud_rate);
int kbhit(void);
char readchar(void);


#endif
