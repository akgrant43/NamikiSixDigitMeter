# NamikiSixDigitMeter
Pharo display and recording for the Namiki Six Digit Meter (Barometer, Thermometer, Hygrometer, Altimeter,Vertical Speed).

See https://www.ebay.com/itm/302325315079 for a description and picture of the meter.

The Namiki Six Digit Meter uses a simple Serial over USB interface to control and read the meter.

# Installation

```smalltalk
Metacello new
    repository: 'github://akgrant/NamikiSixDigitMeter/src';
    load
````

# Usage

## Display

Assuming the meter is the only USB serial device, there will be only a single /dev/ttyUSBx device:

1. Check that the serial device /dev/ttyUSBx exists.
2. Open the display and start recording

```smalltalk
NamikiMeterDisplay openOnlyMeter
```


## Recording (only)

Assuming the meter is the only USB serial device, there will be only a single /dev/ttyUSBx device:

1. Check that the serial device /dev/ttyUSBx exists.
2. Open the display and start recording

```smalltalk
NamikiCSVRecorder openOnlyMeter
```


### Modes

| Mode  | Display                       | Unit   |
| ----- | ----------------------------- | ------ |
| 1 P-h | Pressure                      | hPa    |
| 2 P-I | Pressure                      | inHg   |
| 3 t-C | Temperature                   | deg C  |
| 4 t-F | Temperature                   | deg F  |
| 5 H   | Humidity                      | %      |
| 6 A-m | Altitude                      | m      |
| 7 A-f | Altitude                      | feet   |
| 8 P-h | Mean Sea Level Pressure       | hPa    |
| 9 P-I | Mean Sea Level Pressure       | inHg   |
| 10    | Vertical Speed                | m/s    |
| 11    | Vertical Speed                | ft/min |

