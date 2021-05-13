# CryptoApis::ListXRPRippleTransactionsByBlockHashRIValue

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **String** | Defines the amount of the value. |  |
| **unit** | **String** | Defines the unit of the value. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::ListXRPRippleTransactionsByBlockHashRIValue.new(
  amount: 22.023,
  unit: XRP
)
```

