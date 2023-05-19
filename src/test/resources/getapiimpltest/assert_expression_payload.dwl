%dw 2.0
import * from dw::test::Asserts
---
payload must equalTo({
  "status": "ok",
  "environment": "dev"
  //"now": now() as String
})