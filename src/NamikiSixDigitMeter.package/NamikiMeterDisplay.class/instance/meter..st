accessing
meter: aMeter

	meter := aMeter.
	csvLogger := NamikiCSVRecorder new meter: aMeter; yourself.
	aMeter announcer
		when: NamikiReading
		send: #processReading:
		to: self.
	aMeter announcer 
		when: NamikiStateChange 
		send: #processStateChange:
		to: self.