# CryptoApis::GetBlockDetailsByBlockHeightFromCallbackRIBSZ

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **difficulty** | **String** | Defines how difficult it is for a specific miner to mine the block. |  |
| **ds_block** | **Integer** | Represents the Directory Service block which contains metadata about the miners who participate in the consensus protocol. |  |
| **ds_difficulty** | **String** | Defines how difficult it is to mine the dsBlocks. |  |
| **ds_leader** | **String** | Represents a part of the DS Committee which leads the consensus protocol for the epoch. |  |
| **gas_limit** | **Integer** | Represents the maximum amount of gas allowed in the block in order to determine how many transactions it can fit. |  |
| **gas_used** | **Integer** | Defines how much of the gas for the block has been used. |  |
| **micro_blocks** | **Array&lt;String&gt;** |  |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::GetBlockDetailsByBlockHeightFromCallbackRIBSZ.new(
  difficulty: 41.375,
  ds_block: 12443,
  ds_difficulty: 48.625,
  ds_leader: zil1k9hne0uu86wuj2n7qdqwhrm9uma0xn7ut42tsj,
  gas_limit: 550000,
  gas_used: 10028,
  micro_blocks: null
)
```

