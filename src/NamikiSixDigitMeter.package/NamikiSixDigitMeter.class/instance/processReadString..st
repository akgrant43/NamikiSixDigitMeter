private
processReadString: aString

	| index nextLine |

	buffer := buffer , aString.
	[ index := buffer findString: String crlf.
	index = 0 ]
		whileFalse: [ nextLine := (buffer copyFrom: 1 to: index - 1) trimBoth.
			buffer := buffer copyFrom: index + 2 to: buffer size.
			[ self processRecord: nextLine ]
				on: Error 
				do: [ :ex |
					Transcript 
						show: 'Failed to process: '; cr;
						show: nextLine; cr;
						show: 'Exception: ';
						show: ex printString; cr ] ]