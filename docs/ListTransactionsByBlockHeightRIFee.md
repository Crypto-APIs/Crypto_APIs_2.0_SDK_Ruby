# CryptoApis::ListTransactionsByBlockHeightRIFee

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **String** | Defines the amount of the fee. |  |
| **unit** | **String** | Defines the specific unit of the fee. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::ListTransactionsByBlockHeightRIFee.new(
  amount: 0.00016932,
  unit: BTC
)
```

