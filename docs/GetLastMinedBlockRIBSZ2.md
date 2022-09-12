# CryptoApis::GetLastMinedBlockRIBSZ2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **difficulty** | **String** | Represents a mathematical value of how hard it is to find a valid hash for this block. |  |
| **ds_block** | **Integer** | Represents the Directory Service block which contains metadata about the miners who participate in the consensus protocol. |  |
| **ds_difficulty** | **String** | Defines how difficult it is to mine the dsBlocks. |  |
| **ds_leader** | **String** | Represents a part of the DS Committee which leads the consensus protocol for the epoch. |  |
| **gas_limit** | **Integer** | Represents the maximum amount of gas allowed in the block in order to determine how many transactions it can fit. |  |
| **gas_used** | **Integer** | Defines how much of the gas for the block has been used. |  |
| **micro_blocks** | **Array&lt;String&gt;** |  |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::GetLastMinedBlockRIBSZ2.new(
  difficulty: 21448277761059.71,
  ds_block: 12443,
  ds_difficulty: 48.625,
  ds_leader: zil1tzzw5f7jzrkzl4pe0lqgj9lp4mcza8zna5c877,
  gas_limit: 550000,
  gas_used: 5160,
  micro_blocks: null
)
```

