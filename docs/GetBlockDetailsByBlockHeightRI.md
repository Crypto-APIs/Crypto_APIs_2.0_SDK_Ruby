# CryptoApis::GetBlockDetailsByBlockHeightRI

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **hash** | **String** | Represents the hash of the block, which is its unique identifier. It represents a cryptographic digital fingerprint made by hashing the block header twice through the SHA256 algorithm. |  |
| **height** | **Integer** | Represents the number of blocks in the blockchain preceding this specific block. Block numbers have no gaps. A blockchain usually starts with block 0 called the \&quot;Genesis block\&quot;. |  |
| **next_block_hash** | **String** | Represents the hash of the next block. When this is the last block of the blockchain this value will be an empty string. |  |
| **previous_block_hash** | **String** | Represents the hash of the previous block, also known as the parent block. |  |
| **timestamp** | **Integer** | Defines the exact date/time when this block was mined in Unix |  |
| **transactions_count** | **Integer** | Represents the total number of all transactions as part of this block. |  |
| **blockchain_specific** | [**GetBlockDetailsByBlockHeightRIBS**](GetBlockDetailsByBlockHeightRIBS.md) |  |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::GetBlockDetailsByBlockHeightRI.new(
  hash: 000000000000000cf507214c4f86a5048449230bc5c5dbbed59aa74421553f26,
  height: 1939743,
  next_block_hash: 000000000000000e2f2e4fab8eaaa6bb39632a79a825d34169d451a86959fe04,
  previous_block_hash: 00000000b8c2337ed1221d1861105ad227dfff93b0a1798e78fb6edff58925f5,
  timestamp: 1615378134,
  transactions_count: 12,
  blockchain_specific: null
)
```

