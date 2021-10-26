#ifndef BSP_TEENSY2PP_H
#define BSP_TEENSY2PP_H

#include <stdint.h>
#include <TimerThree.h>
#include <CapacitiveSensor.h>


#define USE_FADER1
#define USE_FADER2
#define USE_FADER3

#define MASTER_TOUCH_PIN    23

#define FADER1_DIR_A_PIN    8
#define FADER1_DIR_B_PIN    9
#define FADER1_SPEED_PIN    14
#define FADER1_TOUCH_PIN    20
#define FADER1_POT_PIN      A0

#define FADER2_DIR_A_PIN    10
#define FADER2_DIR_B_PIN    11
#define FADER2_SPEED_PIN    15
#define FADER2_TOUCH_PIN    21
#define FADER2_POT_PIN      A1

#define FADER3_DIR_A_PIN    12
#define FADER3_DIR_B_PIN    13
#define FADER3_SPEED_PIN    16
#define FADER3_TOUCH_PIN    22
#define FADER3_POT_PIN      A2

#define POT1_PIN            A4
#define POT2_PIN            A5
#define POT3_PIN            A6

#define RESOLUTION_MAX_VALUE    1023

#define USE_HW_TOUCH            false


static inline void init_all_pins(void) {
#ifdef USE_FADER1
    pinMode(FADER1_DIR_A_PIN, OUTPUT);
    pinMode(FADER1_DIR_B_PIN, OUTPUT);
    pinMode(FADER1_SPEED_PIN, OUTPUT);
    pinMode(FADER1_POT_PIN, INPUT);
#endif
#ifdef USE_FADER2
    pinMode(FADER2_DIR_A_PIN, OUTPUT);
    pinMode(FADER2_DIR_B_PIN, OUTPUT);
    pinMode(FADER2_SPEED_PIN, OUTPUT);
    pinMode(FADER2_POT_PIN, INPUT);
#endif
#ifdef USE_FADER3
    pinMode(FADER3_DIR_A_PIN, OUTPUT);
    pinMode(FADER3_DIR_B_PIN, OUTPUT);
    pinMode(FADER3_SPEED_PIN, OUTPUT);
    pinMode(FADER3_POT_PIN, INPUT);
#endif
    pinMode(POT1_PIN, INPUT);
    pinMode(POT2_PIN, INPUT);
    pinMode(POT3_PIN, INPUT);
}

static inline void init_pwm(void) { Timer3.initialize(50); }
static inline void set_pwm(int pin, uint16_t value) { Timer3.pwm(pin, value); }

#endif