# OpenapiClient::NewBlockRequestBodyDataItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **allow_duplicates** | **Boolean** | Specifies a flag that permits or denies the creation of duplicate addresses. | [optional][default to false] |
| **callback_secret_key** | **String** | Represents the Secret Key value provided by the customer. This field is used for security purposes during the callback notification, in order to prove the sender of the callback as Crypto APIs. | [optional] |
| **callback_url** | **String** | Represents the URL that is set by the customer where the callback will be received at. The callback notification will be received only if and when the event occurs. |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::NewBlockRequestBodyDataItem.new(
  allow_duplicates: true,
  callback_secret_key: yourSecretKey,
  callback_url: http://example.com
)
```

