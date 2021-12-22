# CryptoApis::GetBlockDetailsByBlockHashFromCallbackRIBSD2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bits** | **String** | Represents a specific sub-unit of Doge. Bits have two-decimal precision. |  |
| **chainwork** | **String** | Represents a hexadecimal number of all the hashes necessary to produce the current chain. E.g., when converting 0000000000000000000000000000000000000000000086859f7a841475b236fd to a decimal you get 635262017308958427068157 hashes, or 635262 exahashes. |  |
| **difficulty** | **String** | Represents a mathematical value of how hard it is to find a valid hash for this block. |  |
| **merkle_root** | **String** | Defines the single and final (root) node of a Merkle tree. It is the combined hash of all transactions&#39; hashes that are part of a blockchain block. |  |
| **nonce** | **Integer** | Represents a random value that can be adjusted to satisfy the proof of work |  |
| **size** | **Integer** | Represents the total size of the block in Bytes. |  |
| **stripped_size** | **Integer** | Defines the numeric representation of the block size excluding the witness data. |  |
| **version** | **Integer** | Represents the version of the specific block on the blockchain. |  |
| **weight** | **Integer** | Represents a measurement to compare the size of different transactions to each other in proportion to the block size limit. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::GetBlockDetailsByBlockHashFromCallbackRIBSD2.new(
  bits: 436384320,
  chainwork: 000000000000000000000000000000000000000000000624fe5552df3fb55362,
  difficulty: 6222240.869250271,
  merkle_root: 2d043569a81467a8113e25345a7e43021d6afb6520f9e8d0ea2df0c03eec0a17,
  nonce: 0,
  size: 12125,
  stripped_size: 12125,
  version: 6422788,
  weight: 48500
)
```

