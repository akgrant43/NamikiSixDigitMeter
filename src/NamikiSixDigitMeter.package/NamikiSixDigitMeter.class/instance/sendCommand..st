private protocol
sendCommand: aString
	"Send the supplied command to the meter.
	The command should not contain a line end (LF).
	Ensure there is at least 1 second between commands."

	| now |

	now := DateAndTime now.
	(lastCommandTimestamp isNotNil and: [ (now - lastCommandTimestamp) < 1 second  ]) ifTrue: 
		[ (Delay forSeconds: 1) wait ].

	serialPort nextPutAll: aString, String lf.
	Transcript show: 'Sent command: ', aString; cr.