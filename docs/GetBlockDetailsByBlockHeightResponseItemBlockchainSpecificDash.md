# OpenapiClient::GetBlockDetailsByBlockHeightResponseItemBlockchainSpecificDash

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **difficulty** | **String** | Represents a mathematical value of how hard it is to find a valid hash for this block. |  |
| **nonce** | **String** | Represents a random value that can be adjusted to satisfy the Proof of Work |  |
| **size** | **Integer** | Represents the total size of the block in Bytes. |  |
| **bits** | **String** | Represents a specific sub-unit of Dash. Bits have two-decimal precision. |  |
| **chainwork** | **String** | Represents a hexadecimal number of all the hashes necessary to produce the current chain. E.g., when converting 0000000000000000000000000000000000000000000086859f7a841475b236fd to a decimal you get 635262017308958427068157 hashes, or 635262 exahashes. |  |
| **merkle_root** | **String** | Defines the single and final (root) node of a Merkle tree. It is the combined hash of all transactions&#39; hashes that are part of a blockchain block. |  |
| **version** | **Integer** | Represents the version of the specific block on the blockchain. |  |
| **version_hex** | **String** | Is the hexadecimal string representation of the block&#39;s version. |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::GetBlockDetailsByBlockHeightResponseItemBlockchainSpecificDash.new(
  difficulty: 209515044.4071968,
  nonce: 1535290446,
  size: 3892,
  bits: 1917ffc5,
  chainwork: 0000000000000000000000000000000000000000000016abcea319c908148ad0,
  merkle_root: 0348f785f8779822c9f81d60684f320e9a230fbfe6241a0502edfe257feff3b6,
  version: 536870912,
  version_hex: 30000000
)
```

