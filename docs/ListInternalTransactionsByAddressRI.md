# CryptoApis::ListInternalTransactionsByAddressRI

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **String** | Defines the specific amount of the transaction. |  |
| **mined_in_block_hash** | **String** | Represents the hash of the block where this transaction was mined/confirmed for first time. The hash is defined as a cryptographic digital fingerprint made by hashing the block header twice through the SHA256 algorithm. |  |
| **mined_in_block_height** | **Integer** | Represents the hight of the block where this transaction was mined/confirmed for first time. The height is defined as the number of blocks in the blockchain preceding this specific block. |  |
| **operation_id** | **String** | Represents the unique internal transaction ID in regards to the parent transaction (type trace address). |  |
| **operation_type** | **String** | Defines the call type of the internal transaction. |  |
| **parent_hash** | **String** | Defines the specific hash of the parent transaction. |  |
| **recipient** | **String** | Represents the recipient address with the respective amount. |  |
| **sender** | **String** | Represents the sender address with the respective amount. |  |
| **timestamp** | **Integer** |  |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::ListInternalTransactionsByAddressRI.new(
  amount: 0.089286906469667626,
  mined_in_block_hash: 0x85ce0aa9628726c60db14526be8a2b823084b1f4c3dcccdc10b0235f23a49e66,
  mined_in_block_height: 11135508,
  operation_id: call_1,
  operation_type: CALL,
  parent_hash: 0x5d4ea0471b70de09fa3d6a4bc32f703ec44483bffa4d6169fa0a36c6a1dc108a,
  recipient: 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2,
  sender: 0x7a250d5630b4cf539739df2c5dacb4c659f2488d,
  timestamp: 1582202940
)
```

