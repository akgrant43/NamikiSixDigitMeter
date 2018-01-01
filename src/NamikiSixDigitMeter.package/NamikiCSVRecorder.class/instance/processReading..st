event processing
processReading: meterReading

	fileName asFileReference writeStreamDo: [ :stream |
		stream setToEnd.
		stream position = 0 ifTrue:
			[ self writeHeaderOn: stream ].
		stream
			nextPutAll: (',' join: meterReading reading);
			lf. ]