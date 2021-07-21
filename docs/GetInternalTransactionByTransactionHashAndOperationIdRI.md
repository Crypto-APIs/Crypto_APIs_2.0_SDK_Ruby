# CryptoApis::GetInternalTransactionByTransactionHashAndOperationIdRI

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **String** | Defines the specific amount of the transaction. |  |
| **block_hash** | **String** | Represents the hash of the block, which is its unique identifier. It represents a cryptographic digital fingerprint made by hashing the block header twice through the SHA256 algorithm. |  |
| **block_height** | **Integer** | Represents the number of blocks in the blockchain preceding this specific block. Block numbers have no gaps. A blockchain usually starts with block 0 called the \&quot;Genesis block\&quot;. |  |
| **operation_type** | **String** | Defines the specific type of the operation. |  |
| **parent_hash** | **String** | Defines the specific hash of the parent transaction. |  |
| **recipient** | **String** | Represents the recipient address with the respective amount. |  |
| **sender** | **String** | Represents the sender address with the respective amount. |  |
| **timestamp** | **Integer** | Defines the exact date/time in Unix Timestamp when this transaction was mined, confirmed or first seen in Mempool, if it is unconfirmed. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::GetInternalTransactionByTransactionHashAndOperationIdRI.new(
  amount: 0.000479716904346335,
  block_hash: 0x61262bd96d7cf50884e8ce61a5cf978d748417d28d3d76aea889346f050a2fbb,
  block_height: 12561779,
  operation_type: CALL,
  parent_hash: 0x92bb77e16444e0417c8b50dfab68e89c7ad27d4140a766c3bbd4d0ac195f12fc,
  recipient: 0xef7cfdee2f0ef5ae5e0c60098c8838fa7822754e,
  sender: 0x7a250d5630b4cf539739df2c5dacb4c659f2488d,
  timestamp: 1622726449
)
```

