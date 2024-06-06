# Disputes

## Create Dispute

```shell
curl -X POST "https://api.credino.io/credit-scores/disputes"
  -H "Authorization: Bearer 123123123123"
```

> Sample Request Payload:

```json
{
    "user_id": 1,
    "description": "my credit score shouldn't be this low since I pay all my bills on time"
}
```

> Sample JSON successful response:

```json
{
  "success": true,
  "message": "success",
  "data": {
    "user_id": 1,
    "ticket_no": "CRD240603-1"
  }
}
```

This endpoint will create dispute for given user ID

<aside class="notice">This endpoint can only be accessed using <code><strong>Bearer Authorization Header</strong></code>.</aside>

### HTTP Request

`POST "https://api.credino.io/credit-scores/disputes"`

### Request Body Parameters

Parameter | Data Type | Description
--------- | ----------- | -----------
user_id ***(Required)*** | uint | Credino's user ID
description ***(Required)*** | string | dispute description

## Get User Dispute Reports

```shell
curl -X GET "https://api.credino.io/credit-scores/disputes/{userID}"
   -H "Authorization: Bearer 123123123123"
```

> Sample JSON successful response:

```json
{
  "success": true,
  "message": "success",
  "data": {
    "items": [
      {
        "id": 1,
        "ticket_no": "CRD240603-1",
        "description": "my credit score shouldn't be this low since I pay all my bills on time"
      },
      {
        "id": 2,
        "ticket_no": "CRD240602-1",
        "description": "my collectibility score shouldn't be low"
      }
    ],
    "pagination": {
      "has_next": false,
      "has_previous": false,
      "page": 1,
      "per_page": 25,
      "total_items": 2,
      "total_pages": 1
    }
  }
}
```

This endpoint will return user's dispute reports

<aside class="notice">This endpoint can only be accessed using <code><strong>Bearer Authorization Header</strong></code>.</aside>

### HTTP Request

`GET "https://api.credino.io/credit-scores/disputes/{userID}"`


### Path Parameters

Parameter | Data Type | Description
--------- | ----------- | -----------
userID ***(Required)*** | uint64 | Credino's user ID