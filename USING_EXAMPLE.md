получить токен:
```bash
$ curl -u clientId:secret -X POST localhost:9000/oauth/token\?grant_type=password\&username=faro\&password=faro-password
```
```json
{
  "access_token" : "eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE1NTQ3NTU4MTYsInVzZXJfbmFtZSI6ImZhcm8iLCJhdXRob3JpdGllcyI6WyJST0xFX01PRElGSUNBVElPTiIsIlJPTEVfUkVBRE9OTFkiXSwianRpIjoiZWM4ODgyMmQtODZhOC00Y2M1LWEwZjktZDk0OTRmNjA4MWNjIiwiY2xpZW50X2lkIjoiY2xpZW50SWQiLCJzY29wZSI6WyJyZWFkIiwid3JpdGUiXX0.GqqYFrTJs87X1s9XaYkkl-W56KbZ9R5rd170xtrCP2a53DrhsSwmAHfDvkVbIZ7OVIgMSJa1OCZqUTYqCo2AY_2YwMRgo1_E0kxnVT1U9hSjjxB7tD0OQtkL4i2MtgieFbK4O6pREJXIRHsvz4JPjDn6vDLw2n4cDUstviHJVE0OaisfQtNXY5aU-U4rOTdNaQEgg6Pqv68Dlz9PBkar66_WDiR_pYmg_85ERzcq-LGfdGZlpgz8sTg7QqY26hWqNTJvvXoX4_Qh1bJqBdYAQqn4y21e9vgFtyPB3hepRm1TJQvGxzNSGccwMPJ6WqvsEm1y4wkSIsZlqaVbGtu2Aw",
  "token_type" : "bearer",
  "refresh_token" : "eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX25hbWUiOiJmYXJvIiwic2NvcGUiOlsicmVhZCIsIndyaXRlIl0sImF0aSI6ImVjODg4MjJkLTg2YTgtNGNjNS1hMGY5LWQ5NDk0ZjYwODFjYyIsImV4cCI6MTU1NzM0NzUxNiwiYXV0aG9yaXRpZXMiOlsiUk9MRV9NT0RJRklDQVRJT04iLCJST0xFX1JFQURPTkxZIl0sImp0aSI6ImE1Njc2N2YxLTI2NGEtNDQwNS1iMmNlLTFhODFiYmZlZTkwYyIsImNsaWVudF9pZCI6ImNsaWVudElkIn0.YIWaATe1WwgqdzzIQIHFpOLbw-HRsVoui21ncAcwh3XhVToiu2_wgTTYh1a1TLgoYQT1yTcLFWQG5zXWCbU65covyzpyVkoWtwSrAqgNp4h8DPQfh9OuyzCJ30dhSc0QOrddk6ZcaFHTkuYiaxNQLEjVfi635_AcGLV1vdbszP32Jsb-FVzNYh2ZTVRPgXCoR3Uaa3EA9ijkJ31XYKhHGaHsR7IF-Eq3ZTfq8slt7prFR2FnJbVtsMNDXikipZcXCAPjcZ8qZAOP-rkJVYfD0fNi9p_WN_nS0W1-1C_xiiRiFLZAjTqLx6xZRHAD3EiNCPn0Ibe6mAyIaCoMr3k6Gg",
  "expires_in" : 299,
  "scope" : "read write",
  "jti" : "ec88822d-86a8-4cc5-a0f9-d9494f6081cc"
}
```

авторизоваться на тестовом ресурсе расположенном на самом сервере авторизации, и получить json принципала
```bash
$ curl localhost:9000/users/me -H "Authorization: bearer eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE1NTQ3NTU4MTYsInVzZXJfbmFtZSI6ImZhcm8iLCJhdXRob3JpdGllcyI6WyJST0xFX01PRElGSUNBVElPTiIsIlJPTEVfUkVBRE9OTFkiXSwianRpIjoiZWM4ODgyMmQtODZhOC00Y2M1LWEwZjktZDk0OTRmNjA4MWNjIiwiY2xpZW50X2lkIjoiY2xpZW50SWQiLCJzY29wZSI6WyJyZWFkIiwid3JpdGUiXX0.GqqYFrTJs87X1s9XaYkkl-W56KbZ9R5rd170xtrCP2a53DrhsSwmAHfDvkVbIZ7OVIgMSJa1OCZqUTYqCo2AY_2YwMRgo1_E0kxnVT1U9hSjjxB7tD0OQtkL4i2MtgieFbK4O6pREJXIRHsvz4JPjDn6vDLw2n4cDUstviHJVE0OaisfQtNXY5aU-U4rOTdNaQEgg6Pqv68Dlz9PBkar66_WDiR_pYmg_85ERzcq-LGfdGZlpgz8sTg7QqY26hWqNTJvvXoX4_Qh1bJqBdYAQqn4y21e9vgFtyPB3hepRm1TJQvGxzNSGccwMPJ6WqvsEm1y4wkSIsZlqaVbGtu2Aw"
```
```json
{
  "authorities" : [ {
    "authority" : "ROLE_MODIFICATION"
  }, {
    "authority" : "ROLE_READONLY"
  } ],
  "details" : {
    "remoteAddress" : "0:0:0:0:0:0:0:1",
    "sessionId" : null,
    "tokenValue" : "eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE1NTQ3NTU4MTYsInVzZXJfbmFtZSI6ImZhcm8iLCJhdXRob3JpdGllcyI6WyJST0xFX01PRElGSUNBVElPTiIsIlJPTEVfUkVBRE9OTFkiXSwianRpIjoiZWM4ODgyMmQtODZhOC00Y2M1LWEwZjktZDk0OTRmNjA4MWNjIiwiY2xpZW50X2lkIjoiY2xpZW50SWQiLCJzY29wZSI6WyJyZWFkIiwid3JpdGUiXX0.GqqYFrTJs87X1s9XaYkkl-W56KbZ9R5rd170xtrCP2a53DrhsSwmAHfDvkVbIZ7OVIgMSJa1OCZqUTYqCo2AY_2YwMRgo1_E0kxnVT1U9hSjjxB7tD0OQtkL4i2MtgieFbK4O6pREJXIRHsvz4JPjDn6vDLw2n4cDUstviHJVE0OaisfQtNXY5aU-U4rOTdNaQEgg6Pqv68Dlz9PBkar66_WDiR_pYmg_85ERzcq-LGfdGZlpgz8sTg7QqY26hWqNTJvvXoX4_Qh1bJqBdYAQqn4y21e9vgFtyPB3hepRm1TJQvGxzNSGccwMPJ6WqvsEm1y4wkSIsZlqaVbGtu2Aw",
    "tokenType" : "bearer",
    "decodedDetails" : null
  },
  "authenticated" : true,
  "userAuthentication" : {
    "authorities" : [ {
      "authority" : "ROLE_MODIFICATION"
    }, {
      "authority" : "ROLE_READONLY"
    } ],
    "details" : null,
    "authenticated" : true,
    "principal" : "faro",
    "credentials" : "N/A",
    "name" : "faro"
  },
  "oauth2Request" : {
    "clientId" : "clientId",
    "scope" : [ "read", "write" ],
    "requestParameters" : {
      "client_id" : "clientId"
    },
    "resourceIds" : [ ],
    "authorities" : [ ],
    "approved" : true,
    "refresh" : false,
    "redirectUri" : null,
    "responseTypes" : [ ],
    "extensions" : { },
    "grantType" : null,
    "refreshTokenRequest" : null
  },
  "clientOnly" : false,
  "principal" : "faro",
  "credentials" : "",
  "name" : "faro"
}
```