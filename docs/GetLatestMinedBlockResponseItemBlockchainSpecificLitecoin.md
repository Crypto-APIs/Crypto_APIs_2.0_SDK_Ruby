# OpenapiClient::GetLatestMinedBlockResponseItemBlockchainSpecificLitecoin

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **difficulty** | **String** | Represents a mathematical value of how hard it is to find a valid hash for this block. |  |
| **nonce** | **String** | Represents a random value that can be adjusted to satisfy the proof of work |  |
| **size** | **Integer** | Represents the total size of the block in Bytes. |  |
| **bits** | **String** | Represents a specific sub-unit of Litecoin. Bits have two-decimal precision. |  |
| **chainwork** | **String** | Represents a hexadecimal number of all the hashes necessary to produce the current chain. E.g., when converting 0000000000000000000000000000000000000000000086859f7a841475b236fd to a decimal you get 635262017308958427068157 hashes, or 635262 exahashes. |  |
| **merkle_root** | **String** | Defines the single and final (root) node of a Merkle tree. It is the combined hash of all transactions&#39; hashes that are part of a blockchain block. |  |
| **stripped_size** | **Integer** | Defines the numeric representation of the block size excluding the witness data. |  |
| **version** | **Integer** | Represents the version of the specific block on the blockchain. |  |
| **version_hex** | **String** | Is the hexadecimal string representation of the block&#39;s version. |  |
| **weight** | **Integer** | Represents a measurement to compare the size of different transactions to each other in proportion to the block size limit. |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::GetLatestMinedBlockResponseItemBlockchainSpecificLitecoin.new(
  difficulty: 21448277761059.71,
  nonce: 2113101077,
  size: 1408113,
  bits: 1a01a4ae,
  chainwork: 00000000000000000000000000000000000000000000052f02c48d14c5b35ccc,
  merkle_root: a7d45c761cbea0c31ce55b1f2f04d98005980489470ebcc7c29b7b317f01f96b,
  stripped_size: 131447,
  version: 536870912,
  version_hex: 20000000,
  weight: 585599
)
```

