private
writeHeaderOn: aStream

	aStream 	
		nextPutAll: (',' join: meter heading);
		lf.