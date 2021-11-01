#include <Arduino.h>
#include <stdint.h>
#include <MIDI.h>
#include <Bounce.h>  // Bounce library makes button change detection easy

#include "bsp.hpp"
#include "fader.hpp"
#include "touch.hpp"


fader_t fader1 = {
    .dir_A_pin = FADER1_DIR_A_PIN,
    .dir_B_pin = FADER1_DIR_B_PIN,
    .speed_pin = FADER1_SPEED_PIN,
    .touch_pin = FADER1_TOUCH_PIN,
    .analog_pin = FADER1_POT_PIN,

    .midi_control = 7,

    .analog_min_value = 0,
    .analog_max_value = 1023,
};


void myControlChange(byte channel, byte control, byte value) {
    if(channel != 1) { return; }

    if(fader1.midi_control == control) {
        Serial.print("IN:");
        Serial.println(value);
        fader1.target = map(value, 0, 127, 0, 1023);
    }
}


void setup(void) {
    // initialize LED digital pin as an output.
    pinMode(LED_BUILTIN, OUTPUT);
    Serial.begin(115200);

    init_all_pins();
    init_pwm();
    init_touch();

    pinMode(A0, INPUT);

    calibrate_fader(fader1);

    usbMIDI.setHandleControlChange(myControlChange);

    Serial.println("Init Done");
}


void loop(void) {
#if 1
    usbMIDI.read();

    long current_time = millis();
    static long last_run_time = 0;

    if(current_time - last_run_time > 5) {
        // fader1.target = analogRead(A0);

        process_fader(fader1);

        if(fader1.pressed) {
            pinMode(LED_BUILTIN, HIGH);
            if(fader1.midi_value != fader1.last_midi_value) {
                usbMIDI.sendControlChange(fader1.midi_control, fader1.midi_value, 1);
                fader1.target = map(fader1.midi_value, 0, 127, 0, 1023);
                fader1.last_midi_value = fader1.midi_value;
            }
        }
        else { pinMode(LED_BUILTIN, LOW); }

        last_run_time = current_time;
    }
#endif

#if 0
    //! NOTE: Usefull to verify the capacitve touch

    long touch = get_touch(23);
    Serial.print("Touch: ");
    Serial.println(touch);

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