controlling
resume
	"Set the interval on the meter to the default, which will also start it sending readings"

	self setInterval.
	announcer announce: (NamikiStateChange new meter: self; newState: #resumed)