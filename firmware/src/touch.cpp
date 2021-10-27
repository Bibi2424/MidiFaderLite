#include "touch.hpp"

//! NOTE: This cpp file is only needed if the HW doesn't support touch natively
//! NOTE: Ugly af, but works

#if USE_HW_TOUCH == false
    #define TOUCH_DEFAULT_SAMPLE   10

    #ifdef USE_FADER1
    static CapacitiveSensor   touch1 = CapacitiveSensor(MASTER_TOUCH_PIN, FADER1_TOUCH_PIN);
    #endif
    #ifdef USE_FADER2
    static CapacitiveSensor   touch2 = CapacitiveSensor(MASTER_TOUCH_PIN, FADER1_TOUCH_PIN);
    #endif
    #ifdef USE_FADER3
    static CapacitiveSensor   touch3 = CapacitiveSensor(MASTER_TOUCH_PIN, FADER1_TOUCH_PIN);
    #endif


    extern void init_touch(void) {
        #ifdef USE_FADER1
            touch1.set_CS_AutocaL_Millis(0xFFFFFFFF);
            touch1.set_CS_Timeout_Millis(20);
        #endif
        #ifdef USE_FADER2
            touch2.set_CS_AutocaL_Millis(0xFFFFFFFF);
            touch2.set_CS_Timeout_Millis(20);
        #endif
        #ifdef USE_FADER3
            touch3.set_CS_AutocaL_Millis(0xFFFFFFFF);
            touch3.set_CS_Timeout_Millis(20);
        #endif
    }


    static long get_touch(int pin) {
        #ifdef USE_FADER1
            if(pin == FADER1_TOUCH_PIN) {
                return touch1.capacitiveSensor(TOUCH_DEFAULT_SAMPLE);
            }
        #endif
        #ifdef USE_FADER2
            if(pin == FADER2_TOUCH_PIN) {
                return touch2.capacitiveSensor(TOUCH_DEFAULT_SAMPLE);
            }
        #endif
        #ifdef USE_FADER3
            if(pin == FADER3_TOUCH_PIN) {
                return touch3.capacitiveSensor(TOUCH_DEFAULT_SAMPLE);
            }
        #endif
        return -10;
    }
#else
    static inline long get_touch(int pin) {
        return touchRead(pin);
    }
#endif

extern bool is_touch_pressed(int pin) {
    long t = get_touch(pin);
    if(t > PRESSED_TOUCH_THRESHOLD) { return true; }
    else { return false; }
}
