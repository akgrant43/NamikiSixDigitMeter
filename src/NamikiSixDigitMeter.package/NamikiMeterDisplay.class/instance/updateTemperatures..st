event processing
updateTemperatures: aNumber
	"Update the current, min and max temperatures"

	| fontSize text |

	currentTemp := aNumber.
	minTemp := minTemp min: aNumber.
	maxTemp := maxTemp max: aNumber.

	fontSize := StandardFonts defaultFont pointSize.
	text := aNumber asString asText.
	text addAttribute: (TextFontReference toFont: 
		(LogicalFont familyName: 'Source Sans Pro' pointSize: fontSize * 3)).
	text := text, ' C' asText.
	temperatureCurrent text: text.
	temperatureMin label: 'min ', minTemp asString, ' C'.
	temperatureMax label: 'max ', maxTemp asString, ' C'.
