# CryptoApis::ListOmniTransactionsByBlockHashResponseItemFee

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **String** | Defines the amount of the fee. |  |
| **unit** | **String** | Defines the unit of the fee. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::ListOmniTransactionsByBlockHashResponseItemFee.new(
  amount: 0.0012,
  unit: BTC
)
```

