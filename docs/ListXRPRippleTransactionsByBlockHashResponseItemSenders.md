# OpenapiClient::ListXRPRippleTransactionsByBlockHashResponseItemSenders

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address** | **String** | Represents the hash of the address that provides the funds. |  |
| **amount** | **String** | Defines the amount of the sent funds as a string. |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ListXRPRippleTransactionsByBlockHashResponseItemSenders.new(
  address: rPmPErQe4g9725pcNxJpuvKkdqTESTQ6Tu,
  amount: 0.0001
)
```

