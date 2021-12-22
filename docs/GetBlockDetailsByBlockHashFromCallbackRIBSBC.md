# CryptoApis::GetBlockDetailsByBlockHashFromCallbackRIBSBC

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bits** | **String** | A sub-unit of BCH equal to 0.000001 BCH, or 100 Satoshi, and is the same as microbitcoincash (μBCH). Bits have two-decimal precision. |  |
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

instance = CryptoApis::GetBlockDetailsByBlockHashFromCallbackRIBSBC.new(
  bits: 386689514,
  chainwork: 0000000000000000000000000000000000000000015dc8754d8bfaedfffbb3bd,
  difficulty: 5399792.015244232,
  merkle_root: 543872ba53c13183f951d76dd5933f98900a1bf9b3eef716857dfcc3c0534dfb,
  nonce: 1923421957,
  size: 191,
  version: 545259520,
  version_hex: 20000000
)
```

