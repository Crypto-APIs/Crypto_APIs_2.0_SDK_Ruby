# CryptoApis::GetLatestMinedBlockResponseItemBlockchainSpecificEthereum

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **difficulty** | **String** | Represents a mathematical value of how hard it is to find a valid hash for this block. |  |
| **nonce** | **String** | Represents a random value that can be adjusted to satisfy the proof of work |  |
| **size** | **Integer** | Represents the total size of the block in Bytes. |  |
| **extra_data** | **String** | Represents any data that can be included by the miner in the block. |  |
| **gas_limit** | **String** | Defines the total gas limit of all transactions in the block. |  |
| **gas_used** | **String** | Represents the total amount of gas used by all transactions in this block. |  |
| **mined_in_seconds** | **Integer** | Specifies the amount of time required for the block to be mined in seconds. |  |
| **sha3_uncles** | **String** | Defines the combined hash of all uncles for a given parent. |  |
| **total_difficulty** | **String** | Defines the total difficulty of the chain until this block, i.e. how difficult it is for a specific miner to mine a new block. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::GetLatestMinedBlockResponseItemBlockchainSpecificEthereum.new(
  difficulty: 21448277761059.71,
  nonce: 2113101077,
  size: 1408113,
  extra_data: 0x7070796520e4b883e5bda9e7a59ee4bb99e9b1bc080c,
  gas_limit: 12499653,
  gas_used: 12488144,
  mined_in_seconds: 17,
  sha3_uncles: 0x1dcc4de8dec75d7aab85b567b6ccd41ad312451b948a7413f0a142fd40d49347,
  total_difficulty: 4794080996481072
)
```

