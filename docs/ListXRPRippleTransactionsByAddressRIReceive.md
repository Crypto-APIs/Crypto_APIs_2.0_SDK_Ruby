# CryptoApis::ListXRPRippleTransactionsByAddressRIReceive

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **String** | Defines the amount received. |  |
| **unit** | **String** | Defines the unit of the amount received. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::ListXRPRippleTransactionsByAddressRIReceive.new(
  amount: 4.236,
  unit: XRP
)
```

