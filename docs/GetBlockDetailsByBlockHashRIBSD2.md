# CryptoApis::GetBlockDetailsByBlockHashRIBSD2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **difficulty** | **String** | Represents a mathematical value of how hard it is to find a valid hash for this block. |  |
| **bits** | **String** | Represents a specific sub-unit of Dash. Bits have two-decimal precision. |  |
| **chainwork** | **String** | Represents a hexadecimal number of all the hashes necessary to produce the current chain. E.g., when converting 0000000000000000000000000000000000000000000086859f7a841475b236fd to a decimal you get 635262017308958427068157 hashes, or 635262 exahashes. |  |
| **merkle_root** | **String** | Defines the single and final (root) node of a Merkle tree. It is the combined hash of all transactions&#39; hashes that are part of a blockchain block. |  |
| **nonce** | **String** | Represents a random value that can be adjusted to satisfy the Proof of Work. |  |
| **size** | **Integer** | Represents the total size of the block in Bytes. |  |
| **version** | **Integer** | Represents the version of the specific block on the blockchain. |  |
| **version_hex** | **String** | Is the hexadecimal string representation of the block&#39;s version. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::GetBlockDetailsByBlockHashRIBSD2.new(
  difficulty: 209515044.4071968,
  bits: 191b7fd9,
  chainwork: 0000000000000000000000000000000000000000000016b0ef9202fae046555d,
  merkle_root: 14add5ff6fb9dfc58767228b658a48f85d988a1cc49151238f9cef85b53e54d2,
  nonce: 1535290446,
  size: 3892,
  version: 536870912,
  version_hex: 20000000
)
```

