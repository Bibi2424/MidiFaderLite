#include <Arduino.h>
#include <stdint.h>
#include <MIDI.h>
#include <Encoder.h>
#include <Bounce.h>  // Bounce library makes button change detection easy

#include "bsp.hpp"
#include "fader.hpp"
#include "touch.hpp"

#ifdef USE_FADER1
fader_t fader1 = {
    .dir_A_pin = FADER1_DIR_A_PIN,
    .dir_B_pin = FADER1_DIR_B_PIN,
    .speed_pin = FADER1_SPEED_PIN,
    .touch_pin = FADER1_TOUCH_PIN,
    .analog_pin = FADER1_POT_PIN,

    .midi_control = 1,

    .analog_min_value = 0,
    .analog_max_value = 1023,
};
#endif
#ifdef USE_FADER2
fader_t fader2 = {
    .dir_A_pin = FADER2_DIR_A_PIN,
    .dir_B_pin = FADER2_DIR_B_PIN,
    .speed_pin = FADER2_SPEED_PIN,
    .touch_pin = FADER2_TOUCH_PIN,
    .analog_pin = FADER2_POT_PIN,

    .midi_control = 7,

    .analog_min_value = 0,
    .analog_max_value = 1023,
};
#endif
#ifdef USE_FADER3
fader_t fader3 = {
    .dir_A_pin = FADER3_DIR_A_PIN,
    .dir_B_pin = FADER3_DIR_B_PIN,
    .speed_pin = FADER3_SPEED_PIN,
    .touch_pin = FADER3_TOUCH_PIN,
    .analog_pin = FADER3_POT_PIN,

    .midi_control = 11,

    .analog_min_value = 0,
    .analog_max_value = 1023,
};
#endif

// Encoder1 myEnc(ENCODER1_PIN_A, ENCODER1_PIN_B);
// Encoder2 myEnc(ENCODER2_PIN_A, ENCODER2_PIN_B);


void myControlChange(byte channel, byte control, byte value) {
    if(channel != 1) { return; }

#ifdef USE_FADER1
    if(fader1.midi_control == control) {
        Serial.printf("IN:%u\n", value);
        fader1.target = map(value, 0, 127, 0, 1023);
    }
#endif
#ifdef USE_FADER2
    if(fader2.midi_control == control) {
        Serial.printf("IN:%u\n", value);
        fader2.target = map(value, 0, 127, 0, 1023);
    }
#endif
#ifdef USE_FADER3
    if(fader3.midi_control == control) {
        Serial.printf("IN:%u\n", value);
        fader3.target = map(value, 0, 127, 0, 1023);
    }
#endif
}


void setup(void) {

    asm(".global _printf_float");

    // initialize LED digital pin as an output.
    pinMode(LED_BUILTIN, OUTPUT);
    Serial.begin(115200);

    init_all_pins();
    init_pwm();
    init_touch();

    // pinMode(A0, INPUT);

#ifdef USE_FADER1
    calibrate_fader(fader1);
#endif
#ifdef USE_FADER2
    calibrate_fader(fader2);
#endif
#ifdef USE_FADER3
    calibrate_fader(fader3);
#endif

    usbMIDI.setHandleControlChange(myControlChange);

    Serial.println("Init Done");
}


void loop(void) {
    long current_time = millis();

#if 1
    usbMIDI.read();
#endif

#if 1
    static long fader_last_run_time = 0;

    if(current_time - fader_last_run_time > 5) {
        // fader1.target = analogRead(A0);

    #ifdef USE_FADER1
        process_fader(fader1);
        if(fader1.pressed) {
            if(fader1.midi_value != fader1.last_midi_value) {
                usbMIDI.sendControlChange(fader1.midi_control, fader1.midi_value, 1);
                fader1.target = map(fader1.midi_value, 0, 127, 0, 1023);
                fader1.last_midi_value = fader1.midi_value;
            }
        }
    #endif
    #ifdef USE_FADER2
        process_fader(fader2);
        if(fader2.pressed) {
            if(fader2.midi_value != fader2.last_midi_value) {
                usbMIDI.sendControlChange(fader2.midi_control, fader2.midi_value, 1);
                fader2.target = map(fader2.midi_value, 0, 127, 0, 1023);
                fader2.last_midi_value = fader2.midi_value;
            }
        }
    #endif
    #ifdef USE_FADER3
        process_fader(fader3);
        if(fader3.pressed) {
            if(fader3.midi_value != fader3.last_midi_value) {
                usbMIDI.sendControlChange(fader3.midi_control, fader3.midi_value, 1);
                fader3.target = map(fader3.midi_value, 0, 127, 0, 1023);
                fader3.last_midi_value = fader3.midi_value;
            }
        }
    #endif

        last_run_time = current_time;
    }

#endif

#if 0
    static long pots_last_run_time = 0;

    if(current_time - pots_last_run_time > 10) {
        int pot;
        uint8_t midi_value;

        pot = analogRead(POT1_PIN);
        midi_value = map(pot, 0, 1023, 0, 127);
        usbMIDI.sendControlChange(20, midi_value, 1);
        pot = analogRead(POT2_PIN);
        midi_value = map(pot, 0, 1023, 0, 127);
        usbMIDI.sendControlChange(21, midi_value, 1);
        pot = analogRead(POT3_PIN);
        midi_value = map(pot, 0, 1023, 0, 127);
        usbMIDI.sendControlChange(22, midi_value, 1);
    }
#endif

#if 0
    //! NOTE: Usefull to verify the capacitve touch
    long touch1 = get_touch(FADER1_TOUCH_PIN);
    long touch2 = get_touch(FADER2_TOUCH_PIN);
    long touch3 = get_touch(FADER3_TOUCH_PIN);
    Serial.printf("Touch: %u %u %u\n", touch1, touch2, touch3);

    delay(100);
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
    //! NOTE: Usefull to verify the pots
    int pot1 = analogRead(POT1_PIN);
    int pot2 = analogRead(POT2_PIN);
    int pot3 = analogRead(POT3_PIN);
    Serial.printf("Pots: %u %u %u\n", pot1, pot2, pot3);

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