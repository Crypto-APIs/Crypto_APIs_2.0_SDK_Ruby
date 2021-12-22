# CryptoApis::GetTransactionDetailsByTransactionIDFromCallbackRIBSZ2GasPrice

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Integer** | Defines the price of the gas. |  |
| **unit** | **String** | Defines the unit of the gas price amount, e.g. BTC, ETH, XRP. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::GetTransactionDetailsByTransactionIDFromCallbackRIBSZ2GasPrice.new(
  amount: 2994782927,
  unit: ZIL
)
```

