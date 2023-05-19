%dw 2.0
output application/json
fun checkIfExist(data) = not (isEmpty(data))
---
{
  "reportFormat": [
    "PDF"
  ],
  "duplicate": false,
  "report": vars.params.reportType,
  "credit": vars.originalPayload.credit,
  "principals": payload
} ++ ("business" : vars.originalPayload.business ++ "searchId": payload.searchId ) if(checkIfExist(vars.originalPayload.business))