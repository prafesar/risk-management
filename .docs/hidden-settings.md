File -> open > /home/user/.cds-services.json
replace providers with empty object

```json
{
  "cds": {
    "provides": {
      "API_BUSINESS_PARTNER": {
        "kind": "odata",
        "credentials": {
          "url": "http://localhost:45885/odata/v4/api-business-partner"
        }
      },
      "RiskService": {
        "kind": "odata",
        "credentials": {
          "url": "http://localhost:4004/odata/v4/service/risk"
        }
      }
    }
  }
}
```
