# CryptoApis::GetLatestMinedZilliqaBlockRI

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **block_hash** | **String** | Represents the hash of the block, which is its unique identifier. It represents a cryptographic digital fingerprint made by hashing the block header twice through the SHA256 algorithm. |  |
| **block_height** | **Integer** | Represents the number of blocks in the blockchain preceding this specific block. Block numbers have no gaps. A blockchain usually starts with block 0 called the \&quot;Genesis block\&quot;. |  |
| **difficulty** | **String** | Defines how difficult it is for a specific miner to mine the block. |  |
| **ds_block** | **Integer** | Represents the Directory Service block which contains metadata about the miners who participate in the consensus protocol. |  |
| **ds_difficulty** | **String** | Defines how difficult it is to mine the dsBlocks. |  |
| **ds_leader** | **String** | Represents a part of the DS Committee which leads the consensus protocol for the epoch. |  |
| **gas_limit** | **Integer** | Represents the maximum amount of gas allowed in the block in order to determine how many transactions it can fit. |  |
| **gas_used** | **Integer** | Defines how much of the gas for the block has been used. |  |
| **micro_blocks** | **Array&lt;String&gt;** |  |  |
| **previous_block_hash** | **String** | Represents the hash of the previous block, also known as the parent block. |  |
| **timestamp** | **Integer** | Defines the exact date/time when this block was mined in Unix Timestamp. |  |
| **transactions_count** | **Integer** | Represents the total number of all transactions as part of this block. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::GetLatestMinedZilliqaBlockRI.new(
  block_hash: 0xf679d0b5387f0b0b3c3c1f368305512b23860888ba4415063d464a09b8bb6205 Block 1244297 Block 1244299,
  block_height: 1244298,
  difficulty: 41.375,
  ds_block: 12443,
  ds_difficulty: 48.625,
  ds_leader: zil1k9hne0uu86wuj2n7qdqwhrm9uma0xn7ut42tsj,
  gas_limit: 550000,
  gas_used: 10028,
  micro_blocks: null,
  previous_block_hash: 0xe347b6c09e54a582478f6ccc9f85a386616ad1367e9965e5409fab790e538d16 Block 1244296 Block 1244298,
  timestamp: 1616069434,
  transactions_count: 1
)
```

