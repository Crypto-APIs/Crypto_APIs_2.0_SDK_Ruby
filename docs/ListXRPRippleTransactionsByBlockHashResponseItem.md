# OpenapiClient::ListXRPRippleTransactionsByBlockHashResponseItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **additional_data** | **String** | Represents any additional data that may be needed. | [optional] |
| **index** | **Integer** | Represents the index position of the transaction in the specific block. |  |
| **mined_in_block_hash** | **String** | Represents the hash of the block where this transaction was mined/confirmed for first time. The hash is defined as a cryptographic digital fingerprint made by hashing the block header twice through the SHA256 algorithm. |  |
| **mined_in_block_height** | **Integer** | Represents the hight of the block where this transaction was mined/confirmed for first time. The height is defined as the number of blocks in the blockchain preceding this specific block. |  |
| **recipients** | [**Array&lt;ListXRPRippleTransactionsByBlockHashResponseItemRecipients&gt;**](ListXRPRippleTransactionsByBlockHashResponseItemRecipients.md) | Represents an object of addresses that receive the transactions. |  |
| **senders** | [**Array&lt;ListXRPRippleTransactionsByBlockHashResponseItemSenders&gt;**](ListXRPRippleTransactionsByBlockHashResponseItemSenders.md) | Represents an object of addresses that provide the funds. |  |
| **sequence** | **Integer** | Defines the transaction input&#39;s sequence as an integer, which is is used when transactions are replaced with newer versions before LockTime. |  |
| **status** | **String** | Defines the status of the transaction. |  |
| **timestamp** | **Integer** | Defines the exact date/time in Unix Timestamp when this transaction was mined, confirmed or first seen in Mempool, if it is unconfirmed. |  |
| **transaction_hash** | **String** | Represents the same as &#x60;transactionId&#x60; for account-based protocols like Ethereum, while it could be different in UTXO-based protocols like Bitcoin. E.g., in UTXO-based protocols &#x60;hash&#x60; is different from &#x60;transactionId&#x60; for SegWit transactions. |  |
| **type** | **String** | Defines the type of the transaction. |  |
| **fee** | [**ListXRPRippleTransactionsByBlockHashResponseItemFee**](ListXRPRippleTransactionsByBlockHashResponseItemFee.md) |  |  |
| **offer** | [**ListXRPRippleTransactionsByBlockHashResponseItemOffer**](ListXRPRippleTransactionsByBlockHashResponseItemOffer.md) |  |  |
| **receive** | [**ListXRPRippleTransactionsByBlockHashResponseItemReceive**](ListXRPRippleTransactionsByBlockHashResponseItemReceive.md) |  |  |
| **value** | [**ListXRPRippleTransactionsByBlockHashResponseItemValue**](ListXRPRippleTransactionsByBlockHashResponseItemValue.md) |  |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ListXRPRippleTransactionsByBlockHashResponseItem.new(
  additional_data: r4CmvbkDWGt9AZmkfuubmiSdsxGZFxAKBY,
  index: 3,
  mined_in_block_hash: e8f6c4cfef0895ac6f8268cc6ecf0eb159eee4a249d78c344d1a832d4bdd645d,
  mined_in_block_height: 15971358,
  recipients: null,
  senders: null,
  sequence: 32568,
  status: null,
  timestamp: 236589,
  transaction_hash: ba3bc1337071c8e73b441fe12a1911f4365d7ea82cace7c8ecba3ee9f364978b,
  type: Payment,
  fee: null,
  offer: null,
  receive: null,
  value: null
)
```

