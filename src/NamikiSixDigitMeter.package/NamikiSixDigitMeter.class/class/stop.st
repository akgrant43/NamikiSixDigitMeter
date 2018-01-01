controlling
stop
	"Stop the current instance"
	<script>

	self instance ifNil: [ ^self ].
	^self instance stop