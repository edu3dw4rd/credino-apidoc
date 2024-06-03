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
    "id": 1,
    "start_at": "21 Apr 2022",
    "next_payment_at": "21 Jul 2022",
    "credit_amount_due": 1234,
    "membership_type": "VIP 3 Month"
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