# CryptoApis::GetTransactionDetailsByTransactionIDRIBSEGasPrice

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **String** | Represents the price offered to the miner to purchase this amount of gas. |  |
| **unit** | **String** | Defines the unit of the gas price amount, e.g. BTC, ETH, XRP. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::GetTransactionDetailsByTransactionIDRIBSEGasPrice.new(
  amount: 2994782927,
  unit: WEI
)
```

