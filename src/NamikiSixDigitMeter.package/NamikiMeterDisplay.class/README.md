For an overview and usage, please see the readme:
https://github.com/akgrant43/NamikiSixDigitMeter

NamikiMeterDisplay implements a basic Spec based display of temperature and humidity, with minimum and maximum.  Recording to a CSV data file is automatically enabled whenever the display is opened.

Additional work is required to size the display correctly.


Public API and Key Messages

- openOnlyMeter Open the receiver on the only available Serial / USB device   
- on: Open the receiver on the supplied SerialDevice name.


 
Internal Representation and Key Implementation Points.

    Instance Variables
	csvLogger:				<NamikiCSVRecorder>
	currentHumidity:			<Number>
	currentTemp:			<Number>
	humidityCurrent:			<TextPresenter>
	humidityHeading:		<LabelPresenter>
	humidityMax:			<LabelPresenter>
	humidityMin:				<LabelPresenter>
	maxHumidity:			<Number>
	maxTemp:				<Number>
	meter:					<Object>
	minHumidity:			<Number>
	minTemp:				<Number>
	temperatureCurrent:		<TextPresenter>
	temperatureHeading:		<LabelPresenter>
	temperatureMax:			<LabelPresenter>
	temperatureMin:			<LabelPresenter>
	timestamp:				<DateAndTime>


    Implementation Points