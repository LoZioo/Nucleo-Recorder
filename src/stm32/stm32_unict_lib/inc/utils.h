/*
 * utils.h
 *
 *  Created on: 19 nov 2019
 *      Author: LoZio
 */

#ifndef __UTILS_H
#define __UTILS_H

int map(int x, int in_min, int in_max, int out_min, int out_max);
float mapf(float x, float in_min, float in_max, float out_min, float out_max);

int constrain(int x, int min, int max);
float constrainf(float x, float min, float max);

#endif
