# CryptoApis::GetBlockDetailsByBlockHashFromCallbackRIBSZ2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bits** | **String** | Represents a specific sub-unit of Zcash. Bits have two-decimal precision |  |
| **chainwork** | **String** | Represents a hexadecimal number of all the hashes necessary to produce the current chain. E.g., when converting 0000000000000000000000000000000000000000000086859f7a841475b236fd to a decimal you get 635262017308958427068157 hashes, or 635262 exahashes. |  |
| **merkle_root** | **String** | Defines the single and final (root) node of a Merkle tree. It is the combined hash of all transactions&#39; hashes that are part of a blockchain block. |  |
| **nonce** | **String** | Represents a random value that can be adjusted to satisfy the proof of work |  |
| **size** | **Integer** | Represents the total size of the block in Bytes. |  |
| **version** | **Integer** | Represents the transaction version number. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::GetBlockDetailsByBlockHashFromCallbackRIBSZ2.new(
  bits: 524517883,
  chainwork: 000000000000000000000000000000000000000000000000000000262b072797,
  merkle_root: 961113ae943a3abf76da307cf881c4c6b6c13efb27fb67f02c9cdb46029848e8,
  nonce: 2113101077,
  size: 1408113,
  version: 4
)
```

