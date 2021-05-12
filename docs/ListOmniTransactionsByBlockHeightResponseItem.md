# OpenapiClient::ListOmniTransactionsByBlockHeightResponseItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **String** | Defines the amount of the sent tokens. |  |
| **divisible** | **Boolean** | Defines whether the attribute can be divisible or not, as boolean. E.g., if it is \&quot;true\&quot;, the attribute is divisible. |  |
| **mined_in_block_hash** | **String** | Represents the hash of the block where this transaction was mined/confirmed for first time. The hash is defined as a cryptographic digital fingerprint made by hashing the block header twice through the SHA256 algorithm. |  |
| **mined_in_block_height** | **Integer** | Represents the hight of the block where this transaction was mined/confirmed for first time. The height is defined as the number of blocks in the blockchain preceding this specific block. |  |
| **position_in_block** | **Integer** | Represents the index position of the transaction in the specific block. |  |
| **property_id** | **Integer** | Represents the identifier of the tokens to send. |  |
| **recipients** | [**Array&lt;ListOmniTransactionsByBlockHeightResponseItemRecipients&gt;**](ListOmniTransactionsByBlockHeightResponseItemRecipients.md) | Represents an object of addresses that receive the transactions. |  |
| **senders** | [**Array&lt;ListOmniTransactionsByBlockHeightResponseItemSenders&gt;**](ListOmniTransactionsByBlockHeightResponseItemSenders.md) | Represents an object of addresses that provide the funds. |  |
| **timestamp** | **Integer** | Defines the exact date/time in Unix Timestamp when this transaction was mined, confirmed or first seen in Mempool, if it is unconfirmed. |  |
| **transaction_id** | **String** | Represents the unique identifier of a transaction, i.e. it could be &#x60;transactionId&#x60; in UTXO-based protocols like Bitcoin, and transaction &#x60;hash&#x60; in Ethereum blockchain. |  |
| **type** | **String** | Defines the type of the transaction as a string. |  |
| **type_int** | **Integer** | Defines the type of the transaction as a number. |  |
| **valid** | **Boolean** | Defines whether the transaction is valid or not, as boolean. E.g., if it is \&quot;true\&quot;, the transaction is valid. |  |
| **version** | **Integer** | Defines the specific version. |  |
| **fee** | [**ListOmniTransactionsByBlockHeightResponseItemFee**](ListOmniTransactionsByBlockHeightResponseItemFee.md) |  |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ListOmniTransactionsByBlockHeightResponseItem.new(
  amount: 798.483157,
  divisible: true,
  mined_in_block_hash: 000000000000000000061610767eaa0394cab83c70ff1c09dd6b2a2bdad5d1d1,
  mined_in_block_height: 59000,
  position_in_block: 18,
  property_id: 2,
  recipients: ms4KNsbNpoU8g424pzmEjbkFbfAHae1msB,
  senders: null,
  timestamp: 1565743888,
  transaction_id: f43ecd605d8d733d02684c17c3a61d66aed7a9ec4c627fb060b763c348696259,
  type: Simple Send,
  type_int: 0,
  valid: true,
  version: 0,
  fee: null
)
```

