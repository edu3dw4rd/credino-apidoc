# Users

## Register New User

```shell
curl -X POST "https://api.credino.io/users/register"
  -H "Authorization: Bearer 123123123123"
```

> Sample Request Payload:

```json
{
    "name": "Foo Bar",
	"email": "test@mail.com",
	"phone": "+62812123123113"
}
```

> Sample JSON successful response:

```json
{
  "success": true,
  "message": "success",
  "data": {
    "id": 1,
    "name": "Foo Bar",
    "email": "test@mail.com",
    "phone": "+62812123123113"
  }
}
```

> Sample JSON response with errors:

```json
{
  "success": false,
  "message": "email already exist",
  "error": "failed to register user"
}
```

This endpoint will register a new user to Credino system.

<aside class="notice">This endpoint can only be accessed using <code><strong>Bearer Authorization Header</strong></code>.</aside>

### HTTP Request

`POST "https://api.credino.io/users/register"`

### Request Body Parameters

Parameter | Data Type | Description
--------- | ----------- | -----------
name ***(Required)*** | string | Credino user's name
email ***(Required)*** | string | Credino user's email
phone ***(Required)*** | string | Credino user's phone number


## Request OTP

```shell
curl -X POST "https://api.credino.io/users/otp"
  -H "Authorization: Bearer 123123123123"
```

> Sample Request Payload:

```json
{
    "user_id": 1,
    "otp_type": "email"
}
```

> Sample JSON successful response:

```json
{
  "success": true,
  "message": "success",
  "data": null
}
```

> Sample JSON response with errors:

```json
{
  "success": false,
  "message": "already requested otp 5 times. please try again later",
  "error": "failed to request otp"
}
```

This endpoint will send OTP to user through email or SMS.

<aside class="notice">This endpoint can only be accessed using <code><strong>Bearer Authorization Header</strong></code>.</aside>

### HTTP Request

`POST "https://api.credino.io/users/otp"`

### Request Body Parameters

Parameter | Data Type | Description
--------- | ----------- | -----------
user_id ***(Required)*** | uint | user_id
otp_type ***(Required)*** | string | otp type (one of: phone, email)


## New User Verification

```shell
curl -X POST "https://api.credino.io/users/verification"
  -H "Authorization: Bearer 123123123123"
```

> Sample Request Payload:

```json
{
    "user_id": 1,
    "otp": 123456
}
```

> Sample JSON successful response:

```json
{
  "success": true,
  "message": "success",
  "data": {
    "id": 1,
    "name": "Foo Bar",
    "email": "test@mail.com"
  }
}
```

> Sample JSON response with errors:

```json
{
  "success": false,
  "message": "failed",
  "error": "wrong otp"
}
```

This endpoint will verify user using OTP.

<aside class="notice">This endpoint can only be accessed using <code><strong>Bearer Authorization Header</strong></code>.</aside>

### HTTP Request

`POST "https://api.credino.io/users/verification"`

### Request Body Parameters

Parameter | Data Type | Description
--------- | ----------- | -----------
user_id ***(Required)*** | uint | user_id
otp ***(Required)*** | uint | otp verification

## Upload User ID

```shell
curl -X POST "https://api.credino.io/users/upload-id"
  -H "Authorization: Bearer 123123123123"
```

> Sample Request Payload:

```json
{
    "user_id": 1,
    "id_type": "KTP",
    "id_no": "123456123456123456",
    "id_image": "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAjIAAAEqCAYAAAAPoboyAAAKqmlDQ1BJQ0MgUHJv="
}
```

> Sample JSON successful response:

```json
{
  "success": true,
  "message": "success",
  "data": null
}
```

> Sample JSON response with errors:

```json
{
  "success": false,
  "message": "id file exceeds 2MB",
  "error": "failed to upload id"
}
```

This endpoint will upload user's identity information.

<aside class="notice">This endpoint can only be accessed using <code><strong>Bearer Authorization Header</strong></code>.</aside>

### HTTP Request

`POST "https://api.credino.io/users/upload-id"`

### Request Body Parameters

Parameter | Data Type | Description
--------- | ----------- | -----------
user_id ***(Required)*** | uint | user_id
id_type ***(Required)*** | string | identity type (one of: KTP, passport, SIM)
id_no ***(Required)*** | string | identity number
id_image ***(Required)*** | string | identity base64 image