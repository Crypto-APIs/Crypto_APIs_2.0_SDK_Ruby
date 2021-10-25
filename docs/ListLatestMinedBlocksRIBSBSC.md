# CryptoApis::ListLatestMinedBlocksRIBSBSC

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **extra_data** | **String** | Represents any data that can be included by the miner in the block. |  |
| **gas_limit** | **String** | Defines the total gas limit of all transactions in the block. |  |
| **gas_used** | **String** | Represents the total amount of gas used by all transactions in this block. |  |
| **mined_in_seconds** | **Integer** | Specifies the amount of time required for the block to be mined in second |  |
| **sha3_uncles** | **String** | Defines the combined hash of all uncles for a given parent. |  |
| **total_difficulty** | **String** | Defines the total difficulty of the chain until this block, i.e. how difficult it is for a specific miner to mine a new block |  |
| **uncles** | **Array&lt;String&gt;** |  |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::ListLatestMinedBlocksRIBSBSC.new(
  extra_data: 0xd883010001846765746888676f312e31342e34856c696e757800000000000000eb8c4ee17a97af3c7d18e6cfb87d25bf9a483933d393b4fce778c9a7d64eab76471a8ab92c3a7d131c0f9cfbbd9a54b438c80b491c7a579da0e37db6ca823eda01,
  gas_limit: 30000000,
  gas_used: 686304,
  mined_in_seconds: 3,
  sha3_uncles: 0x1dcc4de8dec75d7aab85b567b6ccd41ad312451b948a7413f0a142fd40d49347,
  total_difficulty: 2437536,
  uncles: null
)
```

