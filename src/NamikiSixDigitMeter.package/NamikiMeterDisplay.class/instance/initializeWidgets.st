initialization
initializeWidgets

	temperatureHeading := self newLabel
				label: 'Temperature';
				emphasis: #bold;
				yourself.
	temperatureCurrent := self newText
				disable;
				yourself.
	temperatureMin := self newLabel.
	temperatureMax := self newLabel.

	humidityHeading := self newLabel
				label: 'Humidity';
				emphasis: #bold;
				yourself.
	humidityCurrent := self newText 
				disable;
				yourself.
	humidityMin := self newLabel.
	humidityMax := self newLabel.

	timestamp := self newLabel.