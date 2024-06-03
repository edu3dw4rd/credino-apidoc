# Disputes

## Create Dispute

```shell
curl -X POST "https://api.credino.io/credit-scores/disputes/{userID}"
  -H "Authorization: Bearer 123123123123"
```

> Sample JSON successful response:

```json
{
  "success": true,
  "data": {
    "items": [
      {
        "id": 2,
        "name": "Admin"
      },
      {
        "id": 3,
        "name": "Staff"
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

This endpoint retrieves list of dashboard roles. 

<aside class="notice">This endpoint can only be accessed using <code><strong>Bearer Authorization Header</strong></code>.</aside>

### HTTP Request

`POST "https://api.credino.io/credit-scores/disputes/{userID}"`

### Query Parameters

Parameter | Description
--------- | -----------
role_name | role name to be filtered
page | requested page.
limit | requested limit to set the number of data to return.
order_by | to sort the result, e.g. id ASC