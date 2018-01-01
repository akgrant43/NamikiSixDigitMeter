instance creation
on: aSerialPort
	"Start receiving on the supplied serial port"

	Instance ifNil: [
		^Instance := self new
			serialPortName: aSerialPort;
			start ].

	Instance serialPortName = aSerialPort ifFalse:
		[ self error: 'Existing instance on different serial port' ].
	^Instance