# CryptoApis::GetTransactionDetailsByTransactionIDRIBSBSC

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **contract** | **String** | Numeric representation of the transaction contract |  |
| **gas_limit** | **String** | String representation of the transaction gas |  |
| **gas_price** | [**GetTransactionDetailsByTransactionIDRIBSBSCGasPrice**](GetTransactionDetailsByTransactionIDRIBSBSCGasPrice.md) |  |  |
| **gas_used** | **String** | Numeric representation of the transaction gas used |  |
| **input_data** | **String** | Numeric representation of the transaction input |  |
| **nonce** | **String** | Numeric representation of the transaction nonce |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::GetTransactionDetailsByTransactionIDRIBSBSC.new(
  contract: null,
  gas_limit: null,
  gas_price: null,
  gas_used: null,
  input_data: null,
  nonce: null
)
```

