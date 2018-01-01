event processing
processReading: meterReading

	self updateTemperatures: (meterReading reading at: 5).
	self updateHumidity: (meterReading reading at: 7).
	timestamp label: (String streamContents: [ :stream |
		meterReading timestamp printYMDOn: stream.
		stream nextPut: Character space.
		meterReading timestamp printHMSOn: stream ]).