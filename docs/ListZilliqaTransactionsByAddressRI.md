# CryptoApis::ListZilliqaTransactionsByAddressRI

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **fee** | [**GetZilliqaTransactionDetailsByTransactionIDRIFee**](GetZilliqaTransactionDetailsByTransactionIDRIFee.md) |  |  |
| **gas_limit** | **Integer** | Represents the maximum amount of gas allowed in the block in order to determine how many transactions it can fit. |  |
| **gas_price** | **Integer** | Defines the price of the gas. |  |
| **gas_used** | **Integer** | Defines how much of the gas for the block has been used. |  |
| **mined_in_block_hash** | **String** | Represents the hash of the block where this transaction was mined/confirmed for first time. The hash is defined as a cryptographic digital fingerprint made by hashing the block header twice through the SHA256 algorithm. |  |
| **mined_in_block_height** | **Integer** | Represents the number of blocks in the blockchain preceding this specific block. Block numbers have no gaps. A blockchain usually starts with block 0 called the \&quot;Genesis block\&quot;. |  |
| **nonce** | **Integer** | Represents a random value that can be adjusted to satisfy the Proof of Work. |  |
| **recipients** | [**Array&lt;ListZilliqaTransactionsByAddressRIRecipientsInner&gt;**](ListZilliqaTransactionsByAddressRIRecipientsInner.md) | Defines an object array of the transaction recipients. |  |
| **senders** | [**Array&lt;ListZilliqaTransactionsByAddressRISendersInner&gt;**](ListZilliqaTransactionsByAddressRISendersInner.md) | Represents an object of addresses that provide the funds. |  |
| **timestamp** | **Integer** | Defines the exact date/time when this block was mined in Unix Timestamp. |  |
| **transaction_hash** | **String** | Represents the hash of the transaction, which is its unique identifier. |  |
| **transaction_index** | **Integer** | Defines the numeric representation of the transaction index. |  |
| **transaction_status** | **String** | Defines the status of the transaction, whether it is e.g. pending or complete. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::ListZilliqaTransactionsByAddressRI.new(
  fee: null,
  gas_limit: 550000,
  gas_price: 2994782927,
  gas_used: 24673,
  mined_in_block_hash: 0x7c18901ff8d5af3cebde1c9128c9b20cb046d73fba23d45951f5619b61679c9b,
  mined_in_block_height: 1250283,
  nonce: 13,
  recipients: null,
  senders: null,
  timestamp: 1582202940,
  transaction_hash: 0xf4a847a1489a043ee509d5d7df48f2bf7ba1b15354ed14600b035ff2f7670203,
  transaction_index: 0,
  transaction_status: 2
)
```

