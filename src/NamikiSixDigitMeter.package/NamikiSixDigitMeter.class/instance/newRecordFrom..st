private
newRecordFrom: aString
	"Create a new record and announce it"

	latestReading := Array streamContents: [ :stream |
		stream nextPut: DateAndTime now.
		(',' split: aString) withIndexDo: [ :each :index | 
			index > 1
				ifTrue: [ stream nextPut: each trimBoth asNumber ]
				ifFalse: [ stream nextPut: each trimBoth ] ] ].
	announcer announce: (NamikiReading new 
										meter: self;
										reading: latestReading;
										yourself).