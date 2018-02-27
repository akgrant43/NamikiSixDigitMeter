controlling
setMode: anInteger
	"Set the meter display.
	See https://github.com/akgrant43/NamikiSixDigitMeter for a list of the mode numbers"

	self sendCommand: 'set disp mode ', anInteger asString.