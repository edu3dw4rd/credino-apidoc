# Credit Scores

## Get User Credit Score Info

```shell
curl -X GET "https://api.credino.io/credit-scores/{userID}"
   -H "Authorization: Bearer 123123123123"
```

> Sample JSON successful response:

```json
{
  "success": true,
  "message": "success",
  "data": {
    "user_info": {
      "first_name": "Foo",
      "last_name": "Bar",
      "full_name": "Foo Bar",
      "dob": "1986-04-01"
    },
    "credit_score": {
      "score": 500,
      "rating": "Good",
      "collectibility": 1,
      "collectibility_description": "Lorem ipsum blablabla",
      "score_date": "2024-06-03"
    },
    "risk_factors": {
      "recent_changes": {
        "address_changes": 1,
        "email_changes": 0,
        "phone_changes": 2
      },
      "high_risk_activities": {
        "recent_account_openings": 1,
        "unusual_locations": true,
        "multiple_ssn_uses": false
      },
      "alerts": {
        "reported_fraud": false,
        "data_breaches": true
      }
    }
  }
}
```

> Sample JSON response with errors:

```json
{
    "success": false,
    "error": "data not found"
}
```
This endpoint retrieves Credino's User credit score that has been normalized using linear regression AI engine.

<aside class="notice">This endpoint can only be accessed using <code><strong>Bearer Authorization Header</strong></code>.</aside>

### HTTP Request

`GET https://api.credino.io/credit-scores/{userID}`

### Path Parameters

Parameter | Data Type | Description
--------- | ----------- | -----------
userID ***(Required)*** | uint64 | Credino's user ID

## Get User Financial Recommendation

```shell
curl -X GET "https://api.credino.io/credit-scores/recommendation/{userID}"
   -H "Authorization: Bearer 123123123123"
```

> Sample JSON successful response:

```json
{
  "success": true,
  "message": "success",
  "data": {
    "credit_score": {
      "score": 500,
      "rating": "Good",
      "score_description": "Your credit score is considered good. This means you have a history of managing your credit well. You are likely to receive favorable interest rates on loans and credit cards.",
      "collectibility": 1,
      "collectibility_description": "Your collectibility score is good",
      "score_date": "2024-06-03"
    },
    "recommendations": [
      {
        "title": "Current Limit Balance",
        "description": "use your credit card with max usage of 30% each",
        "cc_data": [
          {
            "financial_institution_id": 1,
            "financial_institution_name": "BCA",
            "current_limit": 10000000,
            "usage_recommendation_percentage": 0.3,
            "usage_recommendation_total": 3000000
          },
          {
            "financial_institution_id": 2,
            "financial_institution_name": "BRI",
            "current_limit": 5000000,
            "usage_recommendation_percentage": 0.3,
            "usage_recommendation_total": 1500000
          }
        ]
      },
      {
        "title": "Pay bills with your CC",
        "description": "Pay your monthly bills (electricity(PLN), water(PDAM), Internet) with your CC"
      },
      {
        "title": "Add subscriptions",
        "description": "Add subscription such as Netflix, Disney+, PSN, XBOX Game Pass and pay with your CC"
      }
    ]
  }
}
```

This endpoint will return financial recommendation based on the Credino's User credit score.

<aside class="notice">This endpoint can only be accessed using <code><strong>Bearer Authorization Header</strong></code>.</aside>

### HTTP Request

`GET https://api.credino.io/credit-scores/recommendation/{userID}`


### Path Parameters

Parameter | Data Type | Description
--------- | ----------- | -----------
userID ***(Required)*** | uint64 | Credino's user ID