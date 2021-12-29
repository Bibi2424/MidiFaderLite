#include <Arduino.h>
#include <stdint.h>
#include <MIDI.h>
#include <Encoder.h>

#include "global.hpp"
#include "bsp.hpp"
#include "fader.hpp"
#include "touch.hpp"
#include "encoder.hpp"
#include "potentiometer.hpp"
#include "button.hpp"
#include "light_effect.hpp"


fader_t fader1 = {
    .dir_A_pin = FADER1_DIR_A_PIN,
    .dir_B_pin = FADER1_DIR_B_PIN,
    .speed_pin = FADER1_SPEED_PIN,
    .touch_pin = FADER1_TOUCH_PIN,
    .analog_pin = FADER1_POT_PIN,
    .m_deadzone = 625,

    .midi_control = 1,

    .analog_min_value = 0,
    .analog_max_value = 1023,
};
fader_t fader2 = {
    .dir_A_pin = FADER2_DIR_A_PIN,
    .dir_B_pin = FADER2_DIR_B_PIN,
    .speed_pin = FADER2_SPEED_PIN,
    .touch_pin = FADER2_TOUCH_PIN,
    .analog_pin = FADER2_POT_PIN,
    .m_deadzone = 750,

    .midi_control = 7,

    .analog_min_value = 0,
    .analog_max_value = 1023,
};
fader_t fader3 = {
    .dir_A_pin = FADER3_DIR_A_PIN,
    .dir_B_pin = FADER3_DIR_B_PIN,
    .speed_pin = FADER3_SPEED_PIN,
    .touch_pin = FADER3_TOUCH_PIN,
    .analog_pin = FADER3_POT_PIN,
    .m_deadzone = 625,

    .midi_control = 11,

    .analog_min_value = 0,
    .analog_max_value = 1023,
};

potentiometer_t pot1 = {
    .analog_pin = POT1_PIN,
    .midi_control = 0x10
};
potentiometer_t pot2 = {
    .analog_pin = POT2_PIN,
    .midi_control = 0x11
};
potentiometer_t pot3 = {
    .analog_pin = POT3_PIN,
    .midi_control = 0x12
};

Encoder enc1(ENCODER1_PIN_A, ENCODER1_PIN_B);
encoder_t encoder1 = {
    .object = enc1,
    .midi_control = 0x13,
};
Encoder enc2(ENCODER2_PIN_A, ENCODER2_PIN_B);
encoder_t encoder2 = {
    .object = enc2,
    .midi_control = 0x14,
};

button_t b1 = { .pin = 25, .midi_control = 0x18 };
button_t b2 = { .pin = 26, .midi_control = 0x19 };
button_t b3 = { .pin = 27, .midi_control = 0x1A };
button_t b4 = { .pin = 28, .midi_control = 0x1B };
button_t b5 = { .pin = 29, .midi_control = 0x1C };
button_t b6 = { .pin = 30, .midi_control = 0x1D };
button_t b7 = { .pin = 31, .midi_control = 0x1E };
button_t b8 = { .pin = 32, .midi_control = 0x1F };

DECLARE_ADC;

const effect_t stanby_effect = {
    .rgb = { 0, 16, 0 },
    .type = SQUARE,
    .duration = 1000
};


void myControlChange(byte channel, byte control, byte value) {
    // Serial.printf("IN[%u-%u]: %u\n", channel, control, value);
    if(channel != 1) { return; }

    if(fader1.midi_control == control) {
        // Serial.printf("IN:%u\n", value);
        fader_set(fader1, value);
    }
    if(fader2.midi_control == control) {
        // Serial.printf("IN:%u\n", value);
        fader_set(fader2, value);
    }
    if(fader3.midi_control == control) {
        // Serial.printf("IN:%u\n", value);
        fader_set(fader3, value);
    }
}


void setup(void) {
    asm(".global _printf_float");

    // initialize LED digital pin as an output.
    pinMode(LED_BUILTIN, OUTPUT);
    Serial.begin(115200);

    init_adc();
    init_all_pins();
    init_pwm();
    init_touch();

    light_effect_init();
    light_effect_trigger(stanby_effect);

    fader_init(fader1);
    fader_init(fader2);
    fader_init(fader3);

    potentiometer_init(pot1);
    potentiometer_init(pot2);
    potentiometer_init(pot3);

    button_init(b1);
    button_init(b2);
    button_init(b3);
    button_init(b4);
    button_init(b5);
    button_init(b6);
    button_init(b7);
    button_init(b8);

    usbMIDI.setHandleControlChange(myControlChange);

    Serial.println("Init Done");
}


void loop(void) {
    long current_time = millis();

#if 1
    static long last_run = 0;
    static long max = 0;
    long elapse = micros() - last_run;
    if(elapse > max && last_run != 0) {
        max = elapse;
        Serial.printf("L=%ld, %ld\n", elapse, max);
    }
    last_run = micros();
    usbMIDI.read();
#endif

#if 1
    static long fader_last_process_time = 0;
    static long fader_last_send_time = 0;

    if(current_time - fader_last_process_time > 5) {

        fader_process(fader1);
        fader_process(fader2);
        fader_process(fader3);
        fader_last_process_time = current_time;
    }

#endif

#if 1
    static long pots_last_run_time = 0;

    if(current_time - pots_last_run_time > 50) {
        potentiometer_get(pot1);
        potentiometer_get(pot2);
        potentiometer_get(pot3);

        pots_last_run_time = current_time;
    }
#endif

#if 1
    static long encs_last_process_time = 0;

    if(current_time - encs_last_process_time > 5) {
        encoder_get(encoder1);
        encoder_get(encoder2);

        encs_last_process_time = current_time;
    }
#endif

#if 1
    if(current_time - fader_last_send_time > 25) {
        fader_send(fader1, false);
        fader_send(fader2, false);
        fader_send(fader3, false);
        potentiometer_send(pot1, false);
        potentiometer_send(pot2, false);
        potentiometer_send(pot3, false);
        encoder_send(encoder1);
        encoder_send(encoder2);
        fader_last_send_time = current_time;
    }
#endif

#if 1
    static long button_last_process_time = 0;
    if(current_time - button_last_process_time > 1) {
        if(button_update(b1)) {
            button_send(b1);
        }
        if(button_update(b2)) {
            button_send(b2);
        }
        if(button_update(b3)) {
            button_send(b3);
        }
        if(button_update(b4)) {
            button_send(b4);
        }
        if(button_update(b5)) {
            button_send(b5);
        }
        if(button_update(b6)) {
            button_send(b6);
        }
        if(button_update(b7)) {
            button_send(b7);
        }
        if(button_update(b8)) {
            button_send(b8);
        }
        button_last_process_time = current_time;
    }
#endif

#if 1
    light_effect_run();
#endif

#if 0
    static long touch_last_run_time = 0;
    //! NOTE: Usefull to verify the capacitve touch
    if(current_time - touch_last_run_time > 100) {
        long touch1 = get_touch(FADER1_TOUCH_PIN);
        long touch2 = get_touch(FADER2_TOUCH_PIN);
        long touch3 = get_touch(FADER3_TOUCH_PIN);
        Serial.printf("Touch: %u %u %u\n", touch1, touch2, touch3);
    }
#endif

#if 0
    //! NOTE: Usefull to verify the slide faders
    int slide1 = analogRead(FADER1_POT_PIN);
    int slide2 = analogRead(FADER2_POT_PIN);
    int slide3 = analogRead(FADER3_POT_PIN);
    Serial.printf("Slider: %u %u %u\n", slide1, slide2, slide3);

    delay(100);
#endif

#if 0
    //! NOTE: Usefull to discover the OUTPUT_DEAD_ZONE

    int target = analogRead(A0);
    // target = map(target, 0, 1023, -1023, 1023);
    target = (target * 2) - 1023;
    if(target > 0 && target < 20) { target = 0; }
    if(target < 0 && target > -20) { target = 0; }
    set_motor_speed(target);

    Serial.print("Target: ");
    Serial.println(target);

    delay(20);

#endif
}
