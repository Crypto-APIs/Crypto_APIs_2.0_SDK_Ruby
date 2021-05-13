# CryptoApis::GetOmniTransactionDetailsByTransactionIDTxidRI

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **String** | Defines the amount of the sent tokens. |  |
| **divisible** | **Boolean** | Defines whether the attribute can be divisible or not, as boolean. E.g., if it is \&quot;true\&quot;, the attribute is divisible. |  |
| **mined_in_block_hash** | **String** | Represents the hash of the block where this transaction was mined/confirmed for first time. The hash is defined as a cryptographic digital fingerprint made by hashing the block header twice through the SHA256 algorithm. |  |
| **mined_in_block_height** | **Integer** | Represents the hight of the block where this transaction was mined/confirmed for first time. The height is defined as the number of blocks in the blockchain preceding this specific block. |  |
| **property_id** | **Integer** | Represents the identifier of the tokens to send. |  |
| **recipients** | [**Array&lt;ListOmniTransactionsByAddressRIRecipients&gt;**](ListOmniTransactionsByAddressRIRecipients.md) | Represents an object of addresses that receive the transactions. |  |
| **senders** | [**Array&lt;GetOmniTransactionDetailsByTransactionIDTxidRISenders&gt;**](GetOmniTransactionDetailsByTransactionIDTxidRISenders.md) | Represents an object of addresses that provide the funds. |  |
| **timestamp** | **Integer** | Defines the exact date/time in Unix Timestamp when this transaction was mined, confirmed or first seen in Mempool, if it is unconfirmed. |  |
| **transaction_id** | **String** | Represents the unique identifier of a transaction, i.e. it could be &#x60;transactionId&#x60; in UTXO-based protocols like Bitcoin, and transaction &#x60;hash&#x60; in Ethereum blockchain. |  |
| **type** | **String** | Defines the type of the transaction as a string. |  |
| **type_int** | **Integer** | Defines the type of the transaction as a number. |  |
| **valid** | **Boolean** | Defines whether the transaction is valid or not, as boolean. E.g. if set to \&quot;true\&quot;, it means the transaction is valid. |  |
| **version** | **Integer** | Defines the specific version. |  |
| **fee** | [**ListUnconfirmedOmniTransactionsByAddressRIFee**](ListUnconfirmedOmniTransactionsByAddressRIFee.md) |  |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::GetOmniTransactionDetailsByTransactionIDTxidRI.new(
  amount: 14.915785,
  divisible: true,
  mined_in_block_hash: 0000000049696aca62d2ea7db9e71aa4f1116ede1eb55f9932e758cc586eb8b6,
  mined_in_block_height: 1941239,
  property_id: 2,
  recipients: null,
  senders: null,
  timestamp: 1616423278,
  transaction_id: d237ff4a681617b767bf22c4e1e8f5115b95c8c168d6cf53bbdec68529f91ecb,
  type: Simple Send,
  type_int: 0,
  valid: true,
  version: 0,
  fee: null
)
```

