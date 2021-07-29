# CryptoApis::GetTransactionDetailsByTransactionIDRIFee

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **String** | Defines the amount of the transaction fee. |  |
| **unit** | **String** |  |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::GetTransactionDetailsByTransactionIDRIFee.new(
  amount: 0.00016932,
  unit: BTC
)
```

