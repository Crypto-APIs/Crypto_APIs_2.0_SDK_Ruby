# CryptoApis::GetLatestMinedXRPRippleBlockRI

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **block_hash** | **String** | Represents the hash of the block, which is its unique identifier. It represents a cryptographic digital fingerprint made by hashing the block header twice through the SHA256 algorithm. |  |
| **block_height** | **Integer** | Represents the number of blocks in the blockchain preceding this specific block. Block numbers have no gaps. A blockchain usually starts with block 0 called the \&quot;Genesis block\&quot;. |  |
| **previous_block_hash** | **String** | Represents the hash of the previous block, also known as the parent block. |  |
| **timestamp** | **Integer** | Defines the exact date/time when this block was mined in Unix Timestamp. |  |
| **transactions_count** | **Integer** | Represents the total number of all transactions as part of this block. |  |
| **total_coins** | [**GetLatestMinedXRPRippleBlockRITotalCoins**](GetLatestMinedXRPRippleBlockRITotalCoins.md) |  |  |
| **total_fees** | [**GetLatestMinedXRPRippleBlockRITotalFees**](GetLatestMinedXRPRippleBlockRITotalFees.md) |  |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::GetLatestMinedXRPRippleBlockRI.new(
  block_hash: f9b304b7933ef298142fdd58ad2dec414a5267dcbbd8a4fe9fc2c0a5f9dde050,
  block_height: 15975748,
  previous_block_hash: de9f9e5b68a1322a16f0d1217cf31765e9101764e6e2f3c7aa058b8c641da37a,
  timestamp: 1616430182,
  transactions_count: 1,
  total_coins: null,
  total_fees: null
)
```

