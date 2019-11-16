running
readFile: aFileReference

	^aFileReference readStreamDo: [ :stream |
		self readStream: stream ]