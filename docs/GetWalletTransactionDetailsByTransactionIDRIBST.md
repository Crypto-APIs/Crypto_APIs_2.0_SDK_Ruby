# CryptoApis::GetWalletTransactionDetailsByTransactionIDRIBST

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **String** | String representation of the amount value |  |
| **bandwidth_used** | **String** | Numeric representation of the transaction used bandwidth |  |
| **contract** | **String** | Numeric representation of the transaction contract |  |
| **energy_used** | **String** | String representation of the transaction used energy |  |
| **has_internal_transactions** | **Boolean** |  |  |
| **has_token_transfers** | **Boolean** |  |  |
| **input** | **String** | Numeric representation of the transaction input |  |
| **status** | **String** | String representation of the transaction status |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::GetWalletTransactionDetailsByTransactionIDRIBST.new(
  amount: null,
  bandwidth_used: null,
  contract: null,
  energy_used: null,
  has_internal_transactions: null,
  has_token_transfers: null,
  input: null,
  status: null
)
```

