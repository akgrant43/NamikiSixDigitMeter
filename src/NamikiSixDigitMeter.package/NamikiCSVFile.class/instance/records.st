accessing
records
	^ records ifNil: [ records := self readFile: fileName ]