# CryptoApis::ListAllUnconfirmedTransactionsRI

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **recipients** | [**Array&lt;ListUnconfirmedTransactionsByAddressRIRecipients&gt;**](ListUnconfirmedTransactionsByAddressRIRecipients.md) | Represents a list of recipient addresses with the respective amounts. In account-based protocols like Ethereum there is only one address in this list. |  |
| **senders** | [**Array&lt;ListUnconfirmedTransactionsByAddressRISenders&gt;**](ListUnconfirmedTransactionsByAddressRISenders.md) | Represents a list of sender addresses with the respective amounts. In account-based protocols like Ethereum there is only one address in this list. |  |
| **timestamp** | **Integer** | Defines the exact date/time in Unix Timestamp when this transaction was mined, confirmed or first seen in Mempool, if it is unconfirmed. |  |
| **transaction_hash** | **String** | String representation of the transaction hash |  |
| **transaction_id** | **String** | Represents the unique identifier of a transaction, i.e. it could be &#x60;transactionId&#x60; in UTXO-based protocols like Bitcoin, and transaction &#x60;hash&#x60; in Ethereum blockchain. |  |
| **blockchain_specific** | [**ListAllUnconfirmedTransactionsRIBS**](ListAllUnconfirmedTransactionsRIBS.md) |  |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::ListAllUnconfirmedTransactionsRI.new(
  recipients: null,
  senders: null,
  timestamp: 1633518942013,
  transaction_hash: aac825d18dfe6cba2eb22532f206fccbaf3b08c3c1457faac9568c1a4a6dfc00,
  transaction_id: 3d74a44fe666308242b2c9dd0197a601779d17ba9fe8f7a23612c53a910bc98d,
  blockchain_specific: null
)
```

