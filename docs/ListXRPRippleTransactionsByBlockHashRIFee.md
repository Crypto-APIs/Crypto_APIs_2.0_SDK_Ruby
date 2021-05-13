# CryptoApis::ListXRPRippleTransactionsByBlockHashRIFee

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **String** | Defines the amount of the fee. |  |
| **unit** | **String** | Defines the unit of the fee. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::ListXRPRippleTransactionsByBlockHashRIFee.new(
  amount: 2.0325,
  unit: XRP
)
```

