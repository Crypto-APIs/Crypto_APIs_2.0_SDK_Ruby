# CryptoApis::GetBlockDetailsByBlockHashResponseItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **hash** | **String** | Represents the hash of the block, which is its unique identifier. It represents a cryptographic digital fingerprint made by hashing the block header twice through the SHA256 algorithm. |  |
| **height** | **Integer** | Represents the number of blocks in the blockchain preceding this specific block. Block numbers have no gaps. A blockchain usually starts with block 0 called the \&quot;Genesis block\&quot;. |  |
| **next_block_hash** | **String** | Represents the hash of the next block. When this is the last block of the blockchain this value will be an empty string. |  |
| **previous_block_hash** | **String** | Represents the hash of the previous block, also known as the parent block. |  |
| **timestamp** | **Integer** | Defines the exact date/time when this block was mined in Unix Timestamp. |  |
| **transactions_count** | **Integer** | Represents the total number of all transactions as part of this block. |  |
| **blockchain_specific** | [**GetBlockDetailsByBlockHashResponseItemBlockchainSpecific**](GetBlockDetailsByBlockHashResponseItemBlockchainSpecific.md) |  |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::GetBlockDetailsByBlockHashResponseItem.new(
  hash: 0000000006b3f483bec16b8a85c632bdd30a14a202c83a9148002c9ee441dd0c,
  height: 1941208,
  next_block_hash: 0000000000000003b08ca90b701da447fb3e7c5c6b43acd33a5e4062fe98dea5,
  previous_block_hash: 00000000844434fd86a630ba8e29503d5396a2b6c4003d69bf0a08d96169d4cd,
  timestamp: 1615378134,
  transactions_count: 145,
  blockchain_specific: null
)
```

