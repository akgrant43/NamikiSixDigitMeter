For an overview and usage, please see the readme:
https://github.com/akgrant43/NamikiSixDigitMeter

States:

NamikiSixDigitMeter announces the following state changes:

- #paused - the interval is set to 0, so no new records will be received.
- #resumed - the interval has been set to > 0
- #start - the meter has been connected and interval set to > 0.
- #stop - the meter has been stopped and the serial port closed.

Public API and Key Messages

- openOnlyMeter Open the receiver on the only available Serial / USB device   
- on: Open the receiver on the supplied SerialDevice name.

 
Internal Representation and Key Implementation Points.

    Instance Variables
	announcer:		<Announcer>
	buffer:		<String>
	heading:		<Array of String>
	interval:		<Integer> seconds
	latestReading:		<Array>
	readProcess:		<Process>
	serialPort:		<SerialPort>
	serialPortName:		<String> device name, e.g. '/dev/ttyUSB0'


    Implementation Points