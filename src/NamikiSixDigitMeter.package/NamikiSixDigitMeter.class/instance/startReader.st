private
startReader

	self
		assert: readProcess isNil
		description: 'Read process is already running'.

	readProcess := [ | buf |
		[ true ] whileTrue: [ 
			buf := serialPort readString.
			buf ifNotEmpty: [ self processReadString: buf ].
			(Delay forSeconds: 1) wait. ] ] forkNamed: 'Namiki Read Process'.
