# CryptoApis::GetBlockDetailsByBlockHeightFromCallbackRI

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **hash** | **String** | Represents the hash of the block, which is its unique identifier. It represents a cryptographic digital fingerprint made by hashing the block header twice through the SHA256 algorithm. |  |
| **height** | **Integer** | Represents the number of blocks in the blockchain preceding this specific block. Block numbers have no gaps. A blockchain usually starts with block 0 called the \&quot;Genesis block\&quot;. |  |
| **previous_block_hash** | **String** | Represents the hash of the previous block, also known as the parent block. |  |
| **timestamp** | **Integer** | Defines the exact date/time when this block was mined in Unix Timestamp. |  |
| **transactions_count** | **Integer** | Represents the total number of all transactions as part of this block. |  |
| **blockchain_specific** | [**GetBlockDetailsByBlockHeightFromCallbackRIBS**](GetBlockDetailsByBlockHeightFromCallbackRIBS.md) |  |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::GetBlockDetailsByBlockHeightFromCallbackRI.new(
  hash: 00000000000000000002ad6f9c74faf503bb055c54e0d0746ef34f888f95890f,
  height: 673852,
  previous_block_hash: 00000000000000000008953625613e60b56194ea31f07aad43c7505fbddce77f,
  timestamp: 1610365615,
  transactions_count: 2755,
  blockchain_specific: null
)
```

