controlling
setMode: aNumber
	"Set the meter display"

	self sendCommand: 'set disp mode ', aNumber.