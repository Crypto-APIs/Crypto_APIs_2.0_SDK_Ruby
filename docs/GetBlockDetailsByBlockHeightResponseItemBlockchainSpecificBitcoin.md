# OpenapiClient::GetBlockDetailsByBlockHeightResponseItemBlockchainSpecificBitcoin

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **difficulty** | **String** | Represents a mathematical value of how hard it is to find a valid hash for this block. |  |
| **nonce** | **String** | Represents a random value that can be adjusted to satisfy the Proof of Work |  |
| **size** | **Integer** | Represents the total size of the block in Bytes. |  |
| **bits** | **String** | A sub-unit of BTC equal to 0.000001 BTC, or 100 Satoshi, and is the same as microbitcoin (μBTC). Bits have two-decimal precision. |  |
| **chainwork** | **String** | Represents a hexadecimal number of all the hashes necessary to produce the current chain. E.g., when converting 0000000000000000000000000000000000000000000086859f7a841475b236fd to a decimal you get 635262017308958427068157 hashes, or 635262 exahashes. |  |
| **merkle_root** | **String** | Defines the single and final (root) node of a Merkle tree. It is the combined hash of all transactions&#39; hashes that are part of a blockchain block. |  |
| **stripped_size** | **Integer** | Defines the numeric representation of the block size excluding the witness data. |  |
| **version** | **Integer** | Represents the version of the specific block on the blockchain. |  |
| **version_hex** | **String** | Is the hexadecimal string representation of the block&#39;s version. |  |
| **weight** | **Integer** | Represents a measurement to compare the size of different transactions to each other in proportion to the block size limit. |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::GetBlockDetailsByBlockHeightResponseItemBlockchainSpecificBitcoin.new(
  difficulty: 209515044.4071968,
  nonce: 1535290446,
  size: 3892,
  bits: 420773839,
  chainwork: 0000000000000000000000000000000000000000000003ddecb747af741625d6,
  merkle_root: 7b52cc9ce137b92365eb4d0f8a708da9e3ba199aa422f96352a0c0c87221251b,
  stripped_size: 2840,
  version: 545259520,
  version_hex: 20000,
  weight: 12412
)
```

