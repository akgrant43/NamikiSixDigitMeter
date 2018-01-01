controlling
pause
	"Set the interval on the meter to the default, which will also start it sending readings"

	self setInterval: 0.
	announcer announce: (NamikiStateChange new meter: self; newState: #paused)