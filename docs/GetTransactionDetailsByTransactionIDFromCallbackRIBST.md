# CryptoApis::GetTransactionDetailsByTransactionIDFromCallbackRIBST

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **String** | Defines the amount of the transaction. |  |
| **bandwidth_used** | [**GetTransactionDetailsByTransactionIDFromCallbackRIBSTBandwidthUsed**](GetTransactionDetailsByTransactionIDFromCallbackRIBSTBandwidthUsed.md) |  |  |
| **contract** | **String** | Represents the specific transaction contract. |  |
| **energy_used** | [**GetTransactionDetailsByTransactionIDFromCallbackRIBSTEnergyUsed**](GetTransactionDetailsByTransactionIDFromCallbackRIBSTEnergyUsed.md) |  |  |
| **has_internal_transactions** | **Boolean** | Defines if the transaction includes internal transactions (true) or not (false). |  |
| **has_token_transfers** | **String** | Defines if the transaction includes token transfers (true) or not (false). |  |
| **input** | **String** | Represents the transaction&#39;s input value. |  |
| **recipients** | **String** | Represents the recipient address. |  |
| **senders** | **String** | Represents the sender address. |  |
| **transaction_status** | **String** | Represents the status of this transaction. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::GetTransactionDetailsByTransactionIDFromCallbackRIBST.new(
  amount: null,
  bandwidth_used: null,
  contract: null,
  energy_used: null,
  has_internal_transactions: null,
  has_token_transfers: null,
  input: 2,
  recipients: null,
  senders: null,
  transaction_status: 0x1
)
```

