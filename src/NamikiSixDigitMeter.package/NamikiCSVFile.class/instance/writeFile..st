writing
writeFile: aFileReference

	^aFileReference asFileReference writeStreamDo: [ :stream |
		self writeStream: stream ]