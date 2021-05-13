# CryptoApis::ListXRPRippleTransactionsByAddressRIValue

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **String** | Defines the specific amount of the value. |  |
| **unit** | **String** | Defines the specific unit of the value. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::ListXRPRippleTransactionsByAddressRIValue.new(
  amount: 22,
  unit: XRP
)
```

