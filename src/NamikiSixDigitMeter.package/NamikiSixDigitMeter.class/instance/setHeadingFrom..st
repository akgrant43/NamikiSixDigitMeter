private
setHeadingFrom: aString
	"Set the heading from the supplied string"

	heading := Array with: 'Timestamp[ISO8601]'.
	heading := heading, ((',' split: aString) collect: [ :each | each trimBoth ]).