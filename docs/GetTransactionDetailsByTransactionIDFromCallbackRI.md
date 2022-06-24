# CryptoApis::GetTransactionDetailsByTransactionIDFromCallbackRI

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **index** | **Integer** | Represents the index position of the transaction in the specific block. |  |
| **mined_in_block_hash** | **String** | Represents the hash of the block where this transaction was mined/confirmed for first time. The hash is defined as a cryptographic digital fingerprint made by hashing the block header twice through the SHA256 algorithm. |  |
| **mined_in_block_height** | **Integer** | Represents the hight of the block where this transaction was mined/confirmed for first time. The height is defined as the number of blocks in the blockchain preceding this specific block. |  |
| **recipients** | [**Array&lt;GetTransactionDetailsByTransactionIDFromCallbackRIRecipientsInner&gt;**](GetTransactionDetailsByTransactionIDFromCallbackRIRecipientsInner.md) | Represents a list of recipient addresses with the respective amounts. In account-based protocols like Ethereum there is only one address in this list. |  |
| **senders** | [**Array&lt;GetTransactionDetailsByTransactionIDFromCallbackRISendersInner&gt;**](GetTransactionDetailsByTransactionIDFromCallbackRISendersInner.md) | Represents a list of sender addresses with the respective amounts. In account-based protocols like Ethereum there is only one address in this list. |  |
| **timestamp** | **Integer** | Defines the exact date/time in Unix Timestamp when this transaction was mined, confirmed or first seen in Mempool, if it is unconfirmed. |  |
| **transaction_hash** | **String** | Represents the same as transactionId for account-based protocols like Ethereum, while it could be different in UTXO-based protocols like Bitcoin. E.g., in UTXO-based protocols hash is different from transactionId for SegWit transactions. |  |
| **fee** | [**GetTransactionDetailsByTransactionIDFromCallbackRIFee**](GetTransactionDetailsByTransactionIDFromCallbackRIFee.md) |  |  |
| **is_confirmed** | **Boolean** |  |  |
| **blockchain_specific** | [**GetTransactionDetailsByTransactionIDFromCallbackRIBS**](GetTransactionDetailsByTransactionIDFromCallbackRIBS.md) |  |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::GetTransactionDetailsByTransactionIDFromCallbackRI.new(
  index: 44,
  mined_in_block_hash: 00000000cc8c79e1a80d14873ee7e319f8d2525354be26ace50796444a1e0764,
  mined_in_block_height: 2105197,
  recipients: null,
  senders: null,
  timestamp: 1637751304,
  transaction_hash: 8888f6c8168ff69aaf6438ab185c690e8c76c63e5f9c472c1c86f08406ea74f2,
  fee: null,
  is_confirmed: true,
  blockchain_specific: null
)
```

