private
setInterval: aNumber
	"Set the interval on the meter to aNumber of seconds, which will also start it sending readings"

	serialPort nextPutAll: 'set serial interval ', aNumber rounded asString, String lf.
	Transcript show: 'NamikiSixDigitMeter set interval: ', aNumber asString; cr.