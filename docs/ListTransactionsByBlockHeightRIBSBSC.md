# CryptoApis::ListTransactionsByBlockHeightRIBSBSC

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **contract** | **String** | Numeric representation of the transaction contract |  |
| **gas_limit** | **String** | String representation of the transaction gas |  |
| **gas_price** | [**ListTransactionsByBlockHeightRIBSBSCGasPrice**](ListTransactionsByBlockHeightRIBSBSCGasPrice.md) |  |  |
| **gas_used** | **String** | Numeric representation of the transaction gas used |  |
| **input_data** | **String** | Numeric representation of the transaction input |  |
| **nonce** | **String** | Numeric representation of the transaction nonce |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::ListTransactionsByBlockHeightRIBSBSC.new(
  contract: null,
  gas_limit: 21000,
  gas_price: null,
  gas_used: 21000,
  input_data: null,
  nonce: 15
)
```

