writing
writeStream: aWriteStream

	| writer |

	writer := NeoCSVWriter on: aWriteStream.
	writer nextPut: self fieldNames.
	self fieldAccessors do: [ :each |
		writer addRawField: each ].
	writer nextPutAll: records.