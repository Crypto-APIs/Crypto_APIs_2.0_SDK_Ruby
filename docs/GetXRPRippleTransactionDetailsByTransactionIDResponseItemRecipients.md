# OpenapiClient::GetXRPRippleTransactionDetailsByTransactionIDResponseItemRecipients

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address** | **String** | Represents the hash of the address that receives the funds. |  |
| **amount** | **String** | Defines the amount of the received funds as a string. |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::GetXRPRippleTransactionDetailsByTransactionIDResponseItemRecipients.new(
  address: rNUY3X3HovAXuTesTbMh8PAX6CM5V2RzMY,
  amount: 0.00001
)
```

