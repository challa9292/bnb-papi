/**
 * 
 * Function to construct error configuration
 * Add any additional custom errors as required
 * Replace with appropriate DWL or JSON
 * 
 */
%dw 2.0
output application/java
---
{
	"MULE:EXPRESSION": {
		"errorCode": 500,
		"reason": "MULE:EXPRESSION",
		"defaultError": error.description
	},
	"UNKNOWN": {
		"errorCode": 500,
		"reason": "UNKNOWN",
		"defaultError": error.description
	},
	"VALIDATION:INVALID_BOOLEAN": {
		"errorCode": 500,
		"reason": "VALIDATION:INVALID_BOOLEAN",
		"defaultError": error.description // read error from the application
	},
	"VALIDATION:INVALID_NUMBER": {
		"errorCode": 400,
		"reason": "VALIDATION:INVALID_NUMBER",
		"defaultError": error.description // read error from the application
	}
}