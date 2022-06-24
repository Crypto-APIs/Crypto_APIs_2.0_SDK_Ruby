# CryptoApis::ListUnconfirmedOmniTransactionsByPropertyIDRI

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **String** | Defines the amount of the sent tokens. |  |
| **divisible** | **Boolean** | Defines whether the attribute can be divisible or not, as boolean. E.g., if it is \&quot;true\&quot;, the attribute is divisible. |  |
| **mined** | **Boolean** | Defines whether the transaction has been mined or not, as boolean. E.g. if set to \&quot;true\&quot;, it means the transaction is mined. |  |
| **property_id** | **Integer** | Represents the identifier of the tokens to send. |  |
| **recipients** | [**Array&lt;ListOmniTransactionsByAddressRIRecipientsInner&gt;**](ListOmniTransactionsByAddressRIRecipientsInner.md) | Represents an object of addresses that receive the transactions. |  |
| **senders** | [**Array&lt;GetUnconfirmedOmniTransactionByTransactionIDTxidRISendersInner&gt;**](GetUnconfirmedOmniTransactionByTransactionIDTxidRISendersInner.md) | Represents an object of addresses that provide the funds. |  |
| **sent** | **Boolean** | Defines whether the transaction has been sent or not, as boolean. E.g. if set to \&quot;true\&quot;, it means the transaction is sent. |  |
| **timestamp** | **Integer** | Defines the exact date/time in Unix Timestamp when this transaction was mined, confirmed or first seen in Mempool, if it is unconfirmed. |  |
| **transaction_id** | **String** | Represents the unique identifier of a transaction, i.e. it could be &#x60;transactionId&#x60; in UTXO-based protocols like Bitcoin, and transaction &#x60;hash&#x60; in Ethereum blockchain. |  |
| **type** | **String** | Defines the type of the transaction as a string. |  |
| **type_iint** | **Integer** | Defines the type of the transaction as a number. |  |
| **version** | **Integer** | Defines the specific version. |  |
| **fee** | [**ListUnconfirmedOmniTransactionsByAddressRIFee**](ListUnconfirmedOmniTransactionsByAddressRIFee.md) |  |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::ListUnconfirmedOmniTransactionsByPropertyIDRI.new(
  amount: 9.146383,
  divisible: true,
  mined: true,
  property_id: 2,
  recipients: null,
  senders: null,
  sent: false,
  timestamp: 1616487033,
  transaction_id: 37ed9145565ffc8c51df7370bd82d546d892973f15cb6c974e7b6b52f1bf5aa9,
  type: Simple Send,
  type_iint: 0,
  version: 0,
  fee: null
)
```

