# CryptoApis::ListTransactionsByBlockHashRIBSBSCGasPrice

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **String** | Represents the price offered to the miner to purchase this amount of gas. |  |
| **unit** | **String** | Defines the specific unit of the fee. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::ListTransactionsByBlockHashRIBSBSCGasPrice.new(
  amount: 20000000000,
  unit: BNB
)
```

