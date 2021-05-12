# OpenapiClient::MinedTransactionRequestBodyDataItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **allow_duplicates** | **Boolean** | Specifies a flag that permits or denies the creation of duplicate addresses. | [optional] |
| **callback_secret_key** | **String** | Represents the Secret Key value provided by the customer. This field is used for security purposes during the callback notification, in order to prove the sender of the callback as Crypto APIs. | [optional] |
| **callback_url** | **String** | Represents the URL that is set by the customer where the callback will be received at. The callback notification will be received only if and when the event occurs. |  |
| **transaction_id** | **String** | Represents the unique identification string that defines the transaction. |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::MinedTransactionRequestBodyDataItem.new(
  allow_duplicates: false,
  callback_secret_key: yourSecretKey,
  callback_url: http://example.com,
  transaction_id: df2690ff97e72c1f8b0f2102a8cb5c1d0fa8fb8754d543c9bc0edc4d4bc34bfc
)
```

