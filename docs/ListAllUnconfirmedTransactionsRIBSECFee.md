# CryptoApis::ListAllUnconfirmedTransactionsRIBSECFee

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **String** | String representation of the fee value |  |
| **unit** | **String** | Represents the fee unit. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::ListAllUnconfirmedTransactionsRIBSECFee.new(
  amount: 0.000105,
  unit: BTC
)
```

