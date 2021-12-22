# CryptoApis::GetBlockDetailsByBlockHeightFromCallbackRIBSL

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bits** | **String** | Represents a specific sub-unit of Litecoin. Bits have two-decimal precision. |  |
| **chainwork** | **String** | Represents a hexadecimal number of all the hashes necessary to produce the current chain. E.g., when converting 0000000000000000000000000000000000000000000086859f7a841475b236fd to a decimal you get 635262017308958427068157 hashes, or 635262 exahashes. |  |
| **difficulty** | **String** | Represents a mathematical value of how hard it is to find a valid hash for this block. |  |
| **merkle_root** | **String** | Defines the single and final (root) node of a Merkle tree. It is the combined hash of all transactions&#39; hashes that are part of a blockchain block. |  |
| **nonce** | **Integer** | Represents a random value that can be adjusted to satisfy the proof of work |  |
| **size** | **Integer** | Represents the total size of the block in Bytes. |  |
| **strippedsize** | **Integer** | Defines the numeric representation of the block size excluding the witness data. |  |
| **version** | **Integer** | Represents the version of the specific block on the blockchain. |  |
| **version_hex** | **String** | Is the hexadecimal string representation of the block&#39;s version. |  |
| **weight** | **Integer** | Represents a measurement to compare the size of different transactions to each other in proportion to the block size limit. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::GetBlockDetailsByBlockHeightFromCallbackRIBSL.new(
  bits: 436301753,
  chainwork: 0000000000000000000000000000000000000000000006c61f0fce4b57f08ff4,
  difficulty: 11679731.14248383,
  merkle_root: 0ea8cea078d2338ce92e62d3275c92682d0a1879ddf861a7ce16889a24deccd2,
  nonce: 3021194134,
  size: 300998,
  strippedsize: 220208,
  version: 536870916,
  version_hex: 20000004,
  weight: 961622
)
```

