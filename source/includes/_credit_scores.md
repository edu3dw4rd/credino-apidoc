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
  "data": {
    "items": [
      {
        "trx_description": "test recommendation",
        "total": "Rp 100.000",
        "created_at": "17 July 2022"
      }
    ],
    "pagination": {
      "has_next": true,
      "has_previous": false,
      "page": 1,
      "per_page": 5,
      "total_items": 11,
      "total_pages": 3
    }
  }
}
```

This endpoint will return financial recommendation based on the Credino's User credit score.

<aside class="notice">This endpoint can only be accessed using <code><strong>Bearer Authorization Header</strong></code>.</aside>

### HTTP Request

`GET https://api.credino.io/credit-scores/recommendation/{userID}`


### Query Parameters

Parameter | Description
--------- | -----------
page | requested page.
limit | requested limit to set the number of data to return.

### Path Parameters

Parameter | Data Type | Description
--------- | ----------- | -----------
userID ***(Required)*** | uint64 | WP user ID