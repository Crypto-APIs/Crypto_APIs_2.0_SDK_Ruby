# CryptoApis::GetBlockDetailsByBlockHeightRIBSBSC

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **difficulty** | **String** | Represents a mathematical value of how hard it is to find a valid hash for this block. |  |
| **extra_data** | **String** | Represents any data that can be included by the miner in the block. |  |
| **gas_limit** | **String** | Defines the total gas limit of all transactions in the block. |  |
| **gas_used** | **String** | Represents the total amount of gas used by all transactions in this block. |  |
| **mined_in_seconds** | **Integer** | Specifies the amount of time required for the block to be mined in seconds. |  |
| **nonce** | **String** | Represents a random value that can be adjusted to satisfy the Proof of Work. |  |
| **sha3_uncles** | **String** | Defines the combined hash of all uncles for a given parent. |  |
| **size** | **Integer** | Represents the total size of the block in Bytes. |  |
| **total_difficulty** | **String** | Defines the total difficulty of the chain until this block, i.e. how difficult it is for a specific miner to mine a new block. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::GetBlockDetailsByBlockHeightRIBSBSC.new(
  difficulty: 209515044.4071968,
  extra_data: 0xd983010203844765746887676f312e342e328777696e646f7773,
  gas_limit: 3141592,
  gas_used: 21000,
  mined_in_seconds: 5,
  nonce: 1535290446,
  sha3_uncles: 0x1dcc4de8dec75d7aab85b567b6ccd41ad312451b948a7413f0a142fd40d49347,
  size: 3892,
  total_difficulty: 20104747399762079739558
)
```

