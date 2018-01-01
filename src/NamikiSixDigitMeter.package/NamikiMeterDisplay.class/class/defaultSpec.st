as yet unclassified
defaultSpec
	<spec: #default>

	| spec |

	spec := SpecColumnLayout composed
		newRow: [ :row | row add: #temperatureHeading ];
		newRow: [ :row | row add: #temperatureCurrent ];
		newRow: [ :row | row 
										add: #temperatureMin;
										add: #temperatureMax ];
		newRow: [ :row | row add: #humidityHeading ];
		newRow: [ :row | row add: #humidityCurrent ];
		newRow: [ :row | row
										add: #humidityMin;
										add: #humidityMax ];
		newRow: [ :row | row add: #timestamp ].
	^spec