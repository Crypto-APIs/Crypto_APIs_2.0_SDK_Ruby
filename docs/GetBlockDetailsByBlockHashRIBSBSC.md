# CryptoApis::GetBlockDetailsByBlockHashRIBSBSC

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **difficulty** | **String** | Represents a mathematical value of how hard it is to find a valid hash for this block. |  |
| **extra_data** | **String** | Represents any data that can be included by the miner in the block. |  |
| **gas_limit** | **String** | Defines the total gas limit of all transactions in the block. |  |
| **gas_used** | **String** | Represents the total amount of gas used by all transactions in this block. |  |
| **mined_in_seconds** | **Integer** | Specifies the amount of time required for the block to be mined in seconds. |  |
| **nonce** | **String** | Represents a random value that can be adjusted to satisfy the Proof of Work. |  |
| **sha3_uncles** | **String** | Defines the combined hash of all uncles for a given paren |  |
| **size** | **Integer** | Represents the total size of the block in Bytes. |  |
| **total_difficulty** | **String** | Defines the total difficulty of the chain until this block, i.e. how difficult it is for a specific miner to mine a new block. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::GetBlockDetailsByBlockHashRIBSBSC.new(
  difficulty: 209515044.4071968,
  extra_data: 0xd883010101846765746888676f312e31352e35856c696e75780000001600553d38bc0fb8bfd6358840caee66f735eefb01fca9183e9de74aa9c582ace98b79996ddcbd32d3148e2b931bd1372a78080988a2ca9f2d0a81ca19df0354534dfed700,
  gas_limit: 21000,
  gas_used: 21000,
  mined_in_seconds: 2,
  nonce: 1535290446,
  sha3_uncles: 0x1dcc4de8dec75d7aab85b567b6ccd41ad312451b948a7413f0a142fd40d49347,
  size: 3892,
  total_difficulty: 24670186
)
```

