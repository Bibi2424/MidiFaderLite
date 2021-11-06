#ifndef BSP_TEENSY32_H
#define BSP_TEENSY32_H

#include <stdint.h>


#define USE_FADER1
#define USE_FADER2
#define USE_FADER3

#define FADER1_DIR_A_PIN    1
#define FADER1_DIR_B_PIN    2
#define FADER1_SPEED_PIN    3
#define FADER1_TOUCH_PIN    15
#define FADER1_POT_PIN      A0

#define FADER2_DIR_A_PIN    7
#define FADER2_DIR_B_PIN    8
#define FADER2_SPEED_PIN    9
#define FADER2_TOUCH_PIN    17
#define FADER2_POT_PIN      A2

#define FADER3_DIR_A_PIN    12
#define FADER3_DIR_B_PIN    11
#define FADER3_SPEED_PIN    10
#define FADER3_TOUCH_PIN    19
#define FADER3_POT_PIN      A4

#define POT1_PIN            A11
#define POT2_PIN            A10
#define POT3_PIN            A9

#define ENCODER1_PIN_A      20
#define ENCODER1_PIN_B      21

#define ENCODER2_PIN_A      0
#define ENCODER3_PIN_B      22

#define BUTTON1_PIN         25
#define BUTTON2_PIN         26
#define BUTTON3_PIN         27
#define BUTTON4_PIN         28
#define BUTTON5_PIN         29
#define BUTTON6_PIN         30
#define BUTTON7_PIN         31
#define BUTTON8_PIN         32

#define RESOLUTION_MAX_VALUE    1023

#define USE_HW_TOUCH            true


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

static inline void init_pwm(void) {
#ifdef USE_FADER1
    analogWriteFrequency(FADER1_SPEED_PIN, 20000);
#endif
#ifdef USE_FADER2
    analogWriteFrequency(FADER2_SPEED_PIN, 20000);
#endif
#ifdef USE_FADER3
    analogWriteFrequency(FADER3_SPEED_PIN, 20000);
#endif
    analogWriteResolution(10);
}
static inline void set_pwm(int pin, uint16_t value) { analogWrite(pin, value); }

#endif