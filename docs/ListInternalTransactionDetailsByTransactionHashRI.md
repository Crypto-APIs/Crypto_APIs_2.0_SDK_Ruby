# CryptoApis::ListInternalTransactionDetailsByTransactionHashRI

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **String** | Defines the specific amount of the transaction. |  |
| **block_hash** | **String** | Represents the hash of the block, which is its unique identifier. It represents a cryptographic digital fingerprint made by hashing the block header twice through the SHA256 algorithm. |  |
| **block_height** | **Integer** | Represents the number of blocks in the blockchain preceding this specific block. Block numbers have no gaps. A blockchain usually starts with block 0 called the \&quot;Genesis block\&quot;. |  |
| **operation_id** | **String** | Represents the unique internal transaction ID in regards to the parent transaction (type trace address). |  |
| **operation_type** | **String** | Defines the call type of the internal transaction. |  |
| **parent_hash** | **String** | Defines the specific hash of the parent transaction. |  |
| **recipient** | **String** | Represents the recipient address with the respective amount. |  |
| **sender** | **String** | Represents the sender address with the respective amount. |  |
| **timestamp** | **Integer** | Defines the exact date/time in Unix Timestamp when this transaction was mined, confirmed or first seen in Mempool, if it is unconfirmed. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::ListInternalTransactionDetailsByTransactionHashRI.new(
  amount: 0.089286906469667626,
  block_hash: 0x85d538e441835ea749738cf690b676099d869059815842a7bde3259c58ff29eb,
  block_height: 12561919,
  operation_id: call_1,
  operation_type: CALL,
  parent_hash: 0x5d4ea0471b70de09fa3d6a4bc32f703ec44483bffa4d6169fa0a36c6a1dc108a,
  recipient: 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2,
  sender: 0x7a250d5630b4cf539739df2c5dacb4c659f2488d,
  timestamp: 1622728329
)
```

