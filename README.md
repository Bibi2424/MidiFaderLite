# MidiFaderLite

Mini Midi controller with moving fader

## Hardware

TBD

## ID

TBD

## Firmware

### USB MIDI Name

 _Note_: 

 to change the midi device name of teensy32, you need to find the usb_desc.h file (located _platformio_/packages/framework-arduinoteensy/cores/teensy3/usbdesc.h)

 Locate the section that match the USB device type (USB_MIDI or USB_MIDI_SERIAL) and change the __PRODUCT_NAME__, __PRODUCT_NAME_LEN__ but also __VENDOR_ID__ and __PRODUCT_ID__

 ```c

#elif defined(USB_MIDI_SERIAL)
  // #define VENDOR_ID		0x16C0
  // #define PRODUCT_ID		0x0489
  #define VENDOR_ID   0xF6C0
  #define PRODUCT_ID    0xF489
  #define MANUFACTURER_NAME	{'T','e','e','n','s','y','d','u','i','n','o'}
  #define MANUFACTURER_NAME_LEN	11
  // #define PRODUCT_NAME		{'T','e','e','n','s','y',' ','M','I','D','I'}
  // #define PRODUCT_NAME_LEN	11
  #define PRODUCT_NAME    {'M','i','d','i','F','a','d','e','r','L','i','t','e'}
  #define PRODUCT_NAME_LEN  13
 ...
 ```