event processing
processStateChange: announcement

	announcement newState = #stopped ifTrue:
		[ timestamp label: 'Stopped at ', DateAndTime now printString ]