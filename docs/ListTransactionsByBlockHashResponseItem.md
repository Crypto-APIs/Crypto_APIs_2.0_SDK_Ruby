# CryptoApis::ListTransactionsByBlockHashResponseItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **index** | **Integer** | Represents the index position of the transaction in the specific block. |  |
| **mined_in_block_hash** | **String** | Represents the hash of the block where this transaction was mined/confirmed for first time. The hash is defined as a cryptographic digital fingerprint made by hashing the block header twice through the SHA256 algorithm. |  |
| **mined_in_block_height** | **Integer** | Represents the hight of the block where this transaction was mined/confirmed for first time. The height is defined as the number of blocks in the blockchain preceding this specific block. |  |
| **recipients** | [**Array&lt;ListTransactionsByBlockHashResponseItemRecipients&gt;**](ListTransactionsByBlockHashResponseItemRecipients.md) | Represents a list of recipient addresses with the respective amounts. In account-based protocols like Ethereum there is only one address in this list. |  |
| **senders** | [**Array&lt;ListTransactionsByBlockHashResponseItemSenders&gt;**](ListTransactionsByBlockHashResponseItemSenders.md) | Represents a list of sender addresses with the respective amounts. In account-based protocols like Ethereum there is only one address in this list. |  |
| **timestamp** | **Integer** | Defines the exact date/time in Unix Timestamp when this transaction was mined, confirmed or first seen in Mempool, if it is unconfirmed. |  |
| **transaction_hash** | **String** | Represents the same as &#x60;transactionId&#x60; for account-based protocols like Ethereum, while it could be different in UTXO-based protocols like Bitcoin. E.g., in UTXO-based protocols &#x60;hash&#x60; is different from &#x60;transactionId&#x60; for SegWit transactions. |  |
| **transaction_id** | **String** | Represents the unique identifier of a transaction, i.e. it could be &#x60;transactionId&#x60; in UTXO-based protocols like Bitcoin, and transaction &#x60;hash&#x60; in Ethereum blockchain. |  |
| **fee** | [**ListTransactionsByBlockHashResponseItemFee**](ListTransactionsByBlockHashResponseItemFee.md) |  |  |
| **blockchain_specific** | [**ListTransactionsByBlockHashResponseItemBlockchainSpecific**](ListTransactionsByBlockHashResponseItemBlockchainSpecific.md) |  |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::ListTransactionsByBlockHashResponseItem.new(
  index: 1,
  mined_in_block_hash: 00000000000000127080d8bcf84f4ad830a71ea0aadce3632579b6b2f26cd94b,
  mined_in_block_height: 1971147,
  recipients: null,
  senders: null,
  timestamp: 1618208236,
  transaction_hash: 273eac351a2b76bb98196f3b310eabc787758cf157e8abe726250447185956ed,
  transaction_id: 4340d9463f0a5e3b3bc5844c17af78e20fa141f976f20732de630b0e6e4cd571,
  fee: null,
  blockchain_specific: null
)
```

