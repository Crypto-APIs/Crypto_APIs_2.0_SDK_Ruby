# OpenapiClient::ListUnconfirmedOmniTransactionsByAddressResponseItemSenders

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address** | **String** | Represents the hash of the address that provides the funds. |  |
| **amount** | **String** | Defines the amount of the sent funds as a string. |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ListUnconfirmedOmniTransactionsByAddressResponseItemSenders.new(
  address: mwDuExdjRewYKYoR454sZGvd15LnJVsmoR,
  amount: 0.1
)
```

