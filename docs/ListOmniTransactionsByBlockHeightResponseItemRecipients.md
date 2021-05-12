# OpenapiClient::ListOmniTransactionsByBlockHeightResponseItemRecipients

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address** | **String** | Represents the hash of the address that receives the funds. |  |
| **amount** | **String** | Defines the amount of the received funds as a string. |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ListOmniTransactionsByBlockHeightResponseItemRecipients.new(
  address: 3Ld5yZ4fqTrW44cUGxpjEuBwAEtCsYUP28,
  amount: 0.1
)
```

