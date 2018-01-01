as yet unclassified
on: aSerialPort

	| display meter |

	meter := NamikiSixDigitMeter on: aSerialPort.
	display := self new
						meter: meter;
						openWithSpec;
						yourself.
	display window whenClosedDo: [ display meter announcer unsubscribe: display ].
	^display