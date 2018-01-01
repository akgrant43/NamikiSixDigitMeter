event processing
updateHumidity: aNumber
	"Update the current, min and max humidities"

	| fontSize text |

	currentHumidity := aNumber.
	minHumidity := minHumidity min: aNumber.
	maxHumidity := maxHumidity max: aNumber.

	fontSize := StandardFonts defaultFont pointSize.
	text := (aNumber asString, '%') asText.
	text addAttribute: (TextFontReference toFont: 
		(LogicalFont familyName: 'Source Sans Pro' pointSize: fontSize * 3)).
	humidityCurrent text: text.
	humidityMin label: 'min ', minHumidity asString, '%'.
	humidityMax label: 'max ', maxHumidity asString, '%'.
