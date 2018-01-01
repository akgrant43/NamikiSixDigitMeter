instance creation
openOnlyMeter
	<script>

	| display meter |

	meter := NamikiSixDigitMeter openOnlyMeter.
	display := self new
						meter: meter;
						openWithSpec;
						yourself.
	display window whenClosedDo: [ display meter announcer unsubscribe: display ].
	^display