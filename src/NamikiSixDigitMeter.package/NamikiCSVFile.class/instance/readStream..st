accessing
readStream: aReadStream

	| reader |

	reader := NeoCSVReader on: aReadStream.
	fieldNames := reader readHeader.
	self assert: fieldNames = #('Timestamp[ISO8601]' 'Time[hhhh:mm:ss]' 'Pressure[hPa]' 'Pressure[inHg]' 'Temperature[C]' 'Temperature[F]' 'Humidity[%]' 'Altitude[m]' 'Altitude[ft]' 'Sea level pressure[hPa]' 'Sea level pressure[inHg]' 'Vertical Speed[m/s]' 'Vertical Speed[ft/m]').
	records := Array streamContents: [ :stream |
		reader do: [ :each | stream nextPut: (NamikiRecord new 
			timestamp: (DateAndTime fromString: (each at: 1));
			time: (Time fromString: (each at: 2));
			pressureHPa: (each at: 3) asNumber;
			pressureInHg: (each at: 4) asNumber;
			temperatureC: (each at: 5) asNumber;
			temperatureF: (each at: 6) asNumber;
			humidity: (each at: 7) asNumber;
			altitudeM: (each at: 8) asNumber;
			altitudeFt: (each at: 9) asNumber;
			seaLevelPressureHPa: (each at: 10) asNumber;
			seaLevelpressureInHg: (each at: 11) asNumber;
			verticalSpeedMs: (each at: 12) asNumber;
			verticalSpeedFtM: (each at: 13) asNumber;
			yourself) ] ].
	^records