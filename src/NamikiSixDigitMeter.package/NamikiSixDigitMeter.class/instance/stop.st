controlling
stop

	[ self setInterval: 0 ]
		on: PrimitiveFailed 
		do: [ :ex | Transcript show: 'Unable to set interval to 0'; cr. ].

	readProcess ifNotNil: [ 
		readProcess terminate.
		readProcess := nil ].

	serialPort ifNotNil: [ 
		serialPort close.
		serialPort := nil ].

	heading := nil.

	Instance := nil.
	announcer announce: (NamikiStateChange new meter: self; newState: #stopped)