# CryptoApis::ListTransactionsByBlockHashRIFee

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **String** | Represents the fee amount. |  |
| **unit** | **String** | Defines the unit of the fee amount, e.g. BTC, ETH, XRP. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::ListTransactionsByBlockHashRIFee.new(
  amount: 0.00016932,
  unit: BTC
)
```

