# CryptoApis::GetWalletTransactionDetailsByTransactionIDRIBSPGasPrice

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **String** | Represents the amount of gas used by this specific transaction alone. |  |
| **unit** | **String** | Defines the unit of the gas price amount, e.g. BTC, ETH, XRP. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::GetWalletTransactionDetailsByTransactionIDRIBSPGasPrice.new(
  amount: 20000000000,
  unit: MATIC
)
```

