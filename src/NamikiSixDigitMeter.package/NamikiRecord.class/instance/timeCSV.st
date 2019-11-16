as yet unclassified
timeCSV
	"Answer a string HHHH:MM:SS"

	^String streamContents: [ :stream |
		stream 
			<< (time hours printPaddedWith: $0 to: 4);
			<< ':';
			<< (time minutes printPaddedWith: $0 to: 2);
			<< ':';
			<< (time seconds printPaddedWith: $0 to: 2) ]