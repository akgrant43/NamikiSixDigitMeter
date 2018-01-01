controlling
start
	"Connect to the meter, start the read process and set the interval"

	self connect.
	(Delay forSeconds: 1) wait.
	self startReader.
	(Delay forSeconds: 1) wait.
	self setInterval.
	Instance := self.
	announcer announce: (NamikiStateChange new meter: self; newState: #started)