/*
 * utils.c
 *
 *  Created on: 19 nov 2019
 *      Author: LoZio
 */

#include "utils.h"

int map(int x, int in_min, int in_max, int out_min, int out_max){
	return (x-in_min)*(out_max-out_min)/(in_max-in_min)+out_min;
}

float mapf(float x, float in_min, float in_max, float out_min, float out_max){
	return (x-in_min)*(out_max-out_min)/(in_max-in_min)+out_min;
}

int constrain(int x, int min, int max){
	if(x>min && x<max)
		return x;
	else if(x<=min)
		return min;
	return max;
}

float constrainf(float x, float min, float max){
	if(x>min && x<max)
		return x;
	else if(x<=min)
		return min;
	return max;
}
