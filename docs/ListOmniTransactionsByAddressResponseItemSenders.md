# OpenapiClient::ListOmniTransactionsByAddressResponseItemSenders

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address** | **String** | Represents the hash of the address that provides the funds. |  |
| **amount** | **String** | Defines the amount of the sent funds as a string. |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ListOmniTransactionsByAddressResponseItemSenders.new(
  address: mpBjRU6F2YrgWwxtMw4Fp1hikqPdrx6spB,
  amount: 0.1
)
```

