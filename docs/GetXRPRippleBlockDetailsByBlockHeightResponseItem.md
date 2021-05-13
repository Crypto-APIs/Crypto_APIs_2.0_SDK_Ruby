# CryptoApis::GetXRPRippleBlockDetailsByBlockHeightResponseItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **block_hash** | **String** | Represents the hash of the block, which is its unique identifier. It represents a cryptographic digital fingerprint made by hashing the block header twice through the SHA256 algorithm. |  |
| **block_height** | **Integer** | Represents the number of blocks in the blockchain preceding this specific block. Block numbers have no gaps. A blockchain usually starts with block 0 called the \&quot;Genesis block\&quot;. |  |
| **next_block_hash** | **String** | Represents the hash of the next block. When this is the last block of the blockchain this value will be an empty string. |  |
| **previous_block_hash** | **String** | Represents the hash of the previous block, also known as the parent block. |  |
| **timestamp** | **Integer** | Defines the exact date/time when this block was mined in Unix Timestamp. |  |
| **total_coins** | [**GetXRPRippleBlockDetailsByBlockHeightResponseItemTotalCoins**](GetXRPRippleBlockDetailsByBlockHeightResponseItemTotalCoins.md) |  |  |
| **total_fees** | [**GetXRPRippleBlockDetailsByBlockHeightResponseItemTotalFees**](GetXRPRippleBlockDetailsByBlockHeightResponseItemTotalFees.md) |  |  |
| **transactions_count** | **Integer** | Represents the total number of all transactions as part of this block. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::GetXRPRippleBlockDetailsByBlockHeightResponseItem.new(
  block_hash: 1ab0614d2a438da8b23086cbceef7d443edbd295d9c7619fc8a19c7618bc22c9,
  block_height: 15886156,
  next_block_hash: 738cf04b9e32826395a8445aa44ec6bbb83f2cc296d94201625f3a3d6ff85a5a,
  previous_block_hash: dcf6ade36e1d5f30b3e52605692ff47123f290f4c8915cbf5a6b7c3541f2354e,
  timestamp: 1616069434,
  total_coins: null,
  total_fees: null,
  transactions_count: 0
)
```

