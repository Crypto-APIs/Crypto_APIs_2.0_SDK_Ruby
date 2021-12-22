# CryptoApis::GetBlockDetailsByBlockHashFromCallbackRIBSBSC

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **difficulty** | **String** | Represents a mathematical value of how hard it is to find a valid hash for this block. |  |
| **extra_data** | **String** | Represents any data that can be included by the miner in the block. |  |
| **gas_limit** | **String** | Defines the total gas limit of all transactions in the block. |  |
| **gas_used** | **String** | Represents the total amount of gas used by all transactions in this block. |  |
| **mined_in_seconds** | **Integer** | Specifies the amount of time required for the block to be mined in second |  |
| **nonce** | **String** | Represents a random value that can be adjusted to satisfy the proof of work |  |
| **sha3_uncles** | **String** | Defines the combined hash of all uncles for a given parent. |  |
| **size** | **Integer** | Represents the total size of the block in Bytes. |  |
| **total_difficulty** | **String** | Defines the total difficulty of the chain until this block, i.e. how difficult it is for a specific miner to mine a new block |  |
| **uncles** | **Array&lt;String&gt;** |  | [optional] |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::GetBlockDetailsByBlockHashFromCallbackRIBSBSC.new(
  difficulty: 21448277761059.71,
  extra_data: 0xd883010105846765746888676f312e31352e35856c696e75780000005865ba3cf692868cb6a780f2bdcc54d5a8d673aaf8bc134cacaabbe933b2ddc92bfea4984b5620d1c5800cd75dd333c86b1cdcf784ca42f204d77c2b82554ced2ec6445b01,
  gas_limit: 29999542,
  gas_used: 896567,
  mined_in_seconds: 2,
  nonce: 0x0000000000000000,
  sha3_uncles: 0x1dcc4de8dec75d7aab85b567b6ccd41ad312451b948a7413f0a142fd40d49347,
  size: 2611,
  total_difficulty: 28671700,
  uncles: null
)
```

