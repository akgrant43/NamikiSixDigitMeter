instance creation
openOnlyMeter

	| reader |

	reader := self new
						meter: NamikiSixDigitMeter openOnlyMeter;
						yourself.
	^reader