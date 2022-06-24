# CryptoApis::ListZilliqaTransactionsByBlockHeightRI

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **fee** | [**GetZilliqaTransactionDetailsByTransactionIDRIFee**](GetZilliqaTransactionDetailsByTransactionIDRIFee.md) |  |  |
| **gas_limit** | **Integer** | Represents the maximum amount of gas allowed in the block in order to determine how many transactions it can fit. |  |
| **gas_price** | **Integer** | Defines the price of the gas. |  |
| **gas_used** | **Integer** | Defines how much of the gas for the block has been used. |  |
| **mined_in_block_hash** | **String** | Represents the hash of the block, which is its unique identifier. It represents a cryptographic digital fingerprint made by hashing the block header twice through the SHA256 algorithm. |  |
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

instance = CryptoApis::ListZilliqaTransactionsByBlockHeightRI.new(
  fee: null,
  gas_limit: 550000,
  gas_price: 2994782927,
  gas_used: 958,
  mined_in_block_hash: 0x3160ca05ac12f60023de6b6987596eccbf084629f1a92b59534c5c021bf27041,
  nonce: 13,
  recipients: null,
  senders: null,
  timestamp: 1582202940,
  transaction_hash: 0xf4a847a1489a043ee509d5d7df48f2bf7ba1b15354ed14600b035ff2f7670203,
  transaction_index: 0,
  transaction_status: 0
)
```

