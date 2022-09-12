# CryptoApis::GetBlockDetailsByBlockHeightRIBSBC

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **difficulty** | **String** | Represents a mathematical value of how hard it is to find a valid hash for this block. |  |
| **bits** | **String** | A sub-unit of BTC equal to 0.000001 BTC, or 100 Satoshi, and is the same as microbitcoin (μBTC). Bits have two-decimal precision. |  |
| **chainwork** | **String** | Represents a hexadecimal number of all the hashes necessary to produce the current chain. E.g., when converting 0000000000000000000000000000000000000000000086859f7a841475b236fd to a decimal you get 635262017308958427068157 hashes, or 635262 exahashes. |  |
| **merkle_root** | **String** | Defines the single and final (root) node of a Merkle tree. It is the combined hash of all transactions&#39; hashes that are part of a blockchain block. |  |
| **nonce** | **String** | Represents a random value that can be adjusted to satisfy the Proof of Work. |  |
| **size** | **Integer** | Represents a random value that can be adjusted to satisfy the Proof of Work. |  |
| **version** | **Integer** | Represents the version of the specific block on the blockchain. |  |
| **version_hex** | **String** | Is the hexadecimal string representation of the block&#39;s version. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::GetBlockDetailsByBlockHeightRIBSBC.new(
  difficulty: 209515044.4071968,
  bits: 1917ffc5,
  chainwork: 0000047a031ea2dedc1db49eee2ca6d6ac39c9362f59b25899538d43c6c68bc7,
  merkle_root: 263a9121b0e8aaf6a3df5f77f7658b358def7642ed8d674b97dc4e207b7f6937,
  nonce: 1535290446,
  size: 1535290446,
  version: 536870912,
  version_hex: 20000
)
```

