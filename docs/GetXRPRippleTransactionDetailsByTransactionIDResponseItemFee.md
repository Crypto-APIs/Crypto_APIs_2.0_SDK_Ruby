# CryptoApis::GetXRPRippleTransactionDetailsByTransactionIDResponseItemFee

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **String** | Defines the amount of the fee. |  |
| **unit** | **String** | Defines the unit of the fee. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::GetXRPRippleTransactionDetailsByTransactionIDResponseItemFee.new(
  amount: 0.0021,
  unit: XRP
)
```

