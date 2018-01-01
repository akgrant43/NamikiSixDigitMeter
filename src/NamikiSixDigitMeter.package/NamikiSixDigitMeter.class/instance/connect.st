private
connect
	"Connect to the meter"

	self
		assert: serialPort isNil
		description: 'Already connected to the meter'.

	serialPort := SerialPort new 
		baudRate: 9600; 
		dataBits: 8; 
		stopBitsType: 1; 
		parityType: 0; 
		yourself. 
	serialPort close.
	serialPort openPort: serialPortName.
