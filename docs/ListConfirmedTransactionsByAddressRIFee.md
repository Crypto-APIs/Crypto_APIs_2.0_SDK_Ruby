# CryptoApis::ListConfirmedTransactionsByAddressRIFee

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **String** | Defines the amount of the transaction fee. |  |
| **unit** | **String** | Defines the specific unit of the fee. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::ListConfirmedTransactionsByAddressRIFee.new(
  amount: 0.00016932,
  unit: BTC
)
```

