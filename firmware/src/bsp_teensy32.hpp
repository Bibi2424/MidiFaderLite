#ifndef BSP_TEENSY32_H
#define BSP_TEENSY32_H

#include <stdint.h>
#include <ADC.h>

#define LED_RED             4
#define LED_GREEN           5
#define LED_BLUE            6

#define FADER1_DIR_A_PIN    2
#define FADER1_DIR_B_PIN    1
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
#define ENCODER2_PIN_B      22

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

//! FIXME: Ugly as hell, I got nothing better at the moment
#define DECLARE_ADC    ADC adc;
extern ADC adc;

static inline void init_adc(void) {
    adc.adc0->setAveraging(32);
    adc.adc0->setResolution(10);
    adc.adc0->setConversionSpeed(ADC_CONVERSION_SPEED::MED_SPEED);
    adc.adc0->setSamplingSpeed(ADC_SAMPLING_SPEED::MED_SPEED);
}

static inline uint16_t adc_get(int pin) {
    return adc.adc0->analogRead(pin);
}

static inline void init_all_pins(void) {
    pinMode(FADER1_DIR_A_PIN, OUTPUT);
    pinMode(FADER1_DIR_B_PIN, OUTPUT);
    pinMode(FADER1_SPEED_PIN, OUTPUT);
    pinMode(FADER1_POT_PIN, INPUT);
    pinMode(FADER2_DIR_A_PIN, OUTPUT);
    pinMode(FADER2_DIR_B_PIN, OUTPUT);
    pinMode(FADER2_SPEED_PIN, OUTPUT);
    pinMode(FADER2_POT_PIN, INPUT);
    pinMode(FADER3_DIR_A_PIN, OUTPUT);
    pinMode(FADER3_DIR_B_PIN, OUTPUT);
    pinMode(FADER3_SPEED_PIN, OUTPUT);
    pinMode(FADER3_POT_PIN, INPUT);

    pinMode(POT1_PIN, INPUT);
    pinMode(POT2_PIN, INPUT);
    pinMode(POT3_PIN, INPUT);

    pinMode(LED_RED, OUTPUT);
    pinMode(LED_GREEN, OUTPUT);
    pinMode(LED_BLUE, OUTPUT);
}

static inline void init_pwm(void) {
    analogWriteFrequency(FADER1_SPEED_PIN, 20000);
    analogWriteFrequency(FADER2_SPEED_PIN, 20000);
    analogWriteFrequency(FADER3_SPEED_PIN, 20000);
    analogWriteResolution(10);
}
static inline void set_pwm(int pin, uint16_t value) { analogWrite(pin, value); }

#endif
