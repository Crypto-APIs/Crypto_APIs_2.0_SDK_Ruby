# CryptoApis::GetLatestMinedBlockRIBSBSC

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **difficulty** | **String** | Represents a mathematical value of how hard it is to find a valid hash for this block. |  |
| **nonce** | **Integer** | Represents a random value that can be adjusted to satisfy the proof of work |  |
| **size** | **Integer** | Represents the total size of the block in Bytes. |  |
| **extra_data** | **String** | Numeric representation of the block extra data |  |
| **gas_limit** | **String** | Numeric representation of the block gas limit |  |
| **gas_used** | **String** | Numeric representation of the block gas used |  |
| **mined_in_seconds** | **Integer** | Numeric representation of the block gas limit |  |
| **sha3_uncles** | **String** | Numeric representation of the block sha3 uncles |  |
| **total_difficulty** | **String** | Numeric representation of the block total difficulty |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::GetLatestMinedBlockRIBSBSC.new(
  difficulty: 21448277761059.71,
  nonce: 2113101077,
  size: 1408113,
  extra_data: 0xd883010001846765746888676f312e31342e34856c696e757800000000000000eb8c4ee17a97af3c7d18e6cfb87d25bf9a483933d393b4fce778c9a7d64eab76471a8ab92c3a7d131c0f9cfbbd9a54b438c80b491c7a579da0e37db6ca823eda01,
  gas_limit: 30000000,
  gas_used: 686304,
  mined_in_seconds: 3,
  sha3_uncles: 0x1dcc4de8dec75d7aab85b567b6ccd41ad312451b948a7413f0a142fd40d49347,
  total_difficulty: 2437536
)
```

