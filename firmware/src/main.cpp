#include <Arduino.h>
#include <stdint.h>
#include <MIDI.h>

#include "bsp.hpp"
#include "fader.hpp"



fader_t fader1 = {
    .dir_A_pin = FADER1_DIR_A_PIN,
    .dir_B_pin = FADER1_DIR_B_PIN,
    .speed_pin = FADER1_SPEED_PIN,
    .touch_pin = FADER1_TOUCH_PIN,
    .analog_pin = FADER1_POT_PIN,
};

// CapacitiveSensor   cs_1_0 = CapacitiveSensor(1, 0);


void setup(void) {
    // initialize LED digital pin as an output.
    pinMode(LED_BUILTIN, OUTPUT);
    Serial.begin(115200);
    Serial.println("Init Done");

    init_all_pins();
    init_pwm();

    pinMode(A0, INPUT);

    // cs_1_0.set_CS_AutocaL_Millis(0xFFFFFFFF);
    // cs_1_0.set_CS_Timeout_Millis(20);
}


void loop(void) {
#if 0
    long start = millis();
    long total1 = cs_1_0.capacitiveSensor(10);

    Serial.print(millis() - start);        // check on performance in milliseconds
    Serial.print("\t");                    // tab character for debug window spacing

    Serial.println(total1);                // print sensor output 1

    // delay(100);                             // arbitrary delay to limit data to serial port
#endif

#if 1
    long current_time = millis();
    static long last_run_time = 0;

    if(current_time - last_run_time > 10) {
        int target = analogRead(A0);
        process_fader(fader1, target);

        last_run_time = current_time;
    }
#endif

#if 0
    //! Usefull to discover the OUTPUT_DEAD_ZONE

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