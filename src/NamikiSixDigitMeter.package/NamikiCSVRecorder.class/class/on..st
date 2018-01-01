instance creation
on: aSerialPort

	| reader |

	reader := self new
						meter: (NamikiSixDigitMeter on: aSerialPort);
						yourself.
	^reader