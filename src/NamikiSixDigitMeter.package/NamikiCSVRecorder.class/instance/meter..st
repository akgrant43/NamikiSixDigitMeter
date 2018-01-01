accessing
meter: aMeter

	meter := aMeter.
	aMeter announcer
		when: NamikiReading
		send: #processReading:
		to: self.
