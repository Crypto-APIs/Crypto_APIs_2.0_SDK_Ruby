# CryptoApis::ListLatestMinedBlocksRIBSB

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bits** | **String** | A sub-unit of BCH equal to 0.000001 BCH, or 100 Satoshi, and is the same as microbitcoincash (μBCH). Bits have two-decimal precision. |  |
| **chainwork** | **String** | Represents a hexadecimal number of all the hashes necessary to produce the current chain. E.g., when converting 0000000000000000000000000000000000000000000086859f7a841475b236fd to a decimal you get 635262017308958427068157 hashes, or 635262 exahashes. |  |
| **difficulty** | **String** | Represents a mathematical value of how hard it is to find a valid hash for this block. | [optional] |
| **merkle_root** | **String** | Defines the single and final (root) node of a Merkle tree. It is the combined hash of all transactions&#39; hashes that are part of a blockchain block. |  |
| **nonce** | **Integer** | Represents a random value that can be adjusted to satisfy the proof of work | [optional] |
| **size** | **Integer** | Represents the block size | [optional] |
| **stripped_size** | **Integer** | Defines the numeric representation of the block size excluding the witness data. |  |
| **version** | **Integer** | Represents the version of the specific block on the blockchain. |  |
| **version_hex** | **String** | Is the hexadecimal string representation of the block&#39;s version. |  |
| **weight** | **Integer** | Represents a measurement to compare the size of different transactions to each other in proportion to the block size limit. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::ListLatestMinedBlocksRIBSB.new(
  bits: 423838743,
  chainwork: 0000000000000000000000000000000000000000000005c9475aae89058a50a6,
  difficulty: 21448277761059.71,
  merkle_root: d3a49e75a5c53ef277bfe0f6474c8ff35c9d3d8f9f9e65a1d3bf45ecff601c82,
  nonce: 500511677,
  size: 1864409,
  stripped_size: 502,
  version: 536870916,
  version_hex: 20000004,
  weight: 2263
)
```

