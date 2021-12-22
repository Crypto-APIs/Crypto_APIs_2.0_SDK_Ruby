# CryptoApis::ListLatestMinedBlocksRIBSD

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bits** | **String** | Represents a specific sub-unit of Dash. Bits have two-decimal precision. |  |
| **chainwork** | **String** | Represents a hexadecimal number of all the hashes necessary to produce the current chain. E.g., when converting 0000000000000000000000000000000000000000000086859f7a841475b236fd to a decimal you get 635262017308958427068157 hashes, or 635262 exahashes. |  |
| **difficulty** | **String** | Represents a mathematical value of how hard it is to find a valid hash for this block. |  |
| **merkle_root** | **String** | Defines the single and final (root) node of a Merkle tree. It is the combined hash of all transactions&#39; hashes that are part of a blockchain block. |  |
| **nonce** | **Integer** | Represents a random value that can be adjusted to satisfy the proof of work |  |
| **size** | **Integer** | Represents the total size of the block in Bytes. |  |
| **version** | **Integer** | Represents the version of the specific block on the blockchain. |  |
| **version_hex** | **String** | Is the hexadecimal string representation of the block&#39;s version. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::ListLatestMinedBlocksRIBSD.new(
  bits: 1c0b6b81,
  chainwork: 000000000000000000000000000000000000000000004f2b087db88ad29f2da6,
  difficulty: 21448277761059.71,
  merkle_root: 67eab41d993576c37ee9ce89054641660e9e61de98fa2b701d19c25cfb4ce037,
  nonce: 2113101077,
  size: 1408113,
  version: 536870912,
  version_hex: 20000010
)
```

