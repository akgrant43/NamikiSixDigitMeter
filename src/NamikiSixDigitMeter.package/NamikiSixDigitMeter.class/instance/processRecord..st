private
processRecord: nextLine

	nextLine ifEmpty: [ ^self ].
	(nextLine beginsWith: 'The value is set') ifTrue: [ ^self ].

	(nextLine beginsWith: 'Syntax error') ifTrue: 
		[ ^self processSyntaxError ].

	(nextLine beginsWith: 'Time[') ifTrue: 
		[ ^self setHeadingFrom: nextLine ].

	nextLine first isDigit ifTrue: 
		[ ^self newRecordFrom: nextLine ].
