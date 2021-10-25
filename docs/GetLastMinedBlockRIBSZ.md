# CryptoApis::GetLastMinedBlockRIBSZ

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **difficulty** | **String** | Represents a mathematical value of how hard it is to find a valid hash for this block. |  |
| **nonce** | **String** | Represents a random value that can be adjusted to satisfy the proof of work |  |
| **size** | **Integer** | Represents the total size of the block in Bytes. |  |
| **bits** | **String** | Represents a specific sub-unit of Zcash. Bits have two-decimal precision |  |
| **chainwork** | **String** | Represents a hexadecimal number of all the hashes necessary to produce the current chain. E.g., when converting 0000000000000000000000000000000000000000000086859f7a841475b236fd to a decimal you get 635262017308958427068157 hashes, or 635262 exahashes. |  |
| **merkleroot** | **String** | Defines the single and final (root) node of a Merkle tree. It is the combined hash of all transactions&#39; hashes that are part of a blockchain block. |  |
| **version** | **Integer** | Represents the transaction version number. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::GetLastMinedBlockRIBSZ.new(
  difficulty: 21448277761059.71,
  nonce: 2113101077,
  size: 1408113,
  bits: 524517883,
  chainwork: 000000000000000000000000000000000000000000000000000000262b072797,
  merkleroot: 961113ae943a3abf76da307cf881c4c6b6c13efb27fb67f02c9cdb46029848e8,
  version: 4
)
```

