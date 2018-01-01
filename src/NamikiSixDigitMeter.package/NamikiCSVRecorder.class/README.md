For an overview and usage, please see the readme:
https://github.com/akgrant43/NamikiSixDigitMeter

NamikiCSVRecorder registers for announcements from a NamikiSixDigitMeter and writes the resulting records to a csv format data file.

- The file is opened and closed for each record (see implementation points below).
- The recorder will write a header record to an empty file.
- The two above points combined mean that the data file can be moved at any time and a new file will be created with the header record.


Public API and Key Messages

- openOnlyMeter Open the receiver on the only available Serial / USB device   
- on: Open the receiver on the supplied SerialDevice name.

Internal Representation and Key Implementation Points.

    Instance Variables
	fileName:	<String> The name of the data file.
	meter:		<NamikiSixDigitMeter>


Implementation Points:

- NamikiCSVRecorder assumes that updates from the meter are relatively infrequent, e.g. once a minute.