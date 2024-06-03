---
title: API Reference

language_tabs: # must be one of https://git.io/vQNgJ
  - shell

includes:
  - credit_scores
  - disputes
  - errors

search: true
---

# Introduction

Welcome to the Credino API Documentation! This documentation will guide you on how to use the Credino API.

# Authentication

> To authorize, use this code:

```shell
# This example is to show how to use Bearer Authorization header
curl "credino_api_endpoint"
  -H "Authorization: Bearer 123123123123"
```

Credino API uses Authorization Bearer header as an authorization to access the endpoints.

1. Please send Bearer Authentication header which can be obtained when login to the app. To get this key, please
contact the administrator. Afterward, use the token data returned from `dashboard login`. It should be included in all API requests in a header that looks like the following:

    `Authorization: Bearer 123123123123`


<aside class="notice">
You must replace <code>123123123123</code> with your personal API key.
</aside>