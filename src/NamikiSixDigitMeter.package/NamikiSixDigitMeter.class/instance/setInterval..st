controlling
setInterval: aNumber
	"Set the interval on the meter to aNumber of seconds, which will also start it sending readings"

	self sendCommand: 'set serial interval ', aNumber rounded asString.
	Transcript show: 'NamikiSixDigitMeter set interval: ', aNumber asString; cr.