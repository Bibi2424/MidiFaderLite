#ifndef BSP_TEENSY2_H
#define BSP_TEENSY2_H

#include <stdint.h>
#include <TimerThree.h>
#include <CapacitiveSensor.h>

#define USE_FADER1
// #define USE_FADER2
// #define USE_FADER3

#define MASTER_TOUCH_PIN        0

#define FADER1_DIR_A_PIN        17
#define FADER1_DIR_B_PIN        16
#define FADER1_SPEED_PIN        9
#define FADER1_TOUCH_PIN        1
#define FADER1_POT_PIN          A1

#define RESOLUTION_MAX_VALUE    1023

#define USE_HW_TOUCH            false


static inline void init_all_pins(void) {
#ifdef USE_FADER1
    pinMode(FADER1_DIR_A_PIN, OUTPUT);
    pinMode(FADER1_DIR_B_PIN, OUTPUT);
    pinMode(FADER1_SPEED_PIN, OUTPUT);
    pinMode(FADER1_POT_PIN, INPUT);
#endif
}

static inline void init_pwm(void) { Timer3.initialize(50); }
static inline void set_pwm(int pin, uint16_t value) {
    if(value == 0) {
        Timer3.disablePwm(pin);
        digitalWrite(pin, HIGH);
        return;
    }
    Timer3.pwm(pin, value);
}

#endif