# CryptoApis::GetBlockDetailsByBlockHeightRIBSBSC

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **difficulty** | **String** | Represents a mathematical value of how hard it is to find a valid hash for this block. |  |
| **nonce** | **Integer** | Represents a random value that can be adjusted to satisfy the Proof of Work |  |
| **size** | **Integer** | Represents the total size of the block in Bytes. |  |
| **extra_data** | **String** | Numeric representation of the block extra data |  |
| **gas_limit** | **String** | Numeric representation of the block gas limit |  |
| **gas_used** | **String** | Numeric representation of the block gas used |  |
| **mined_in_seconds** | **String** | Numeric representation of the block gas limit |  |
| **sha3_uncles** | **String** | Numeric representation of the block sha3 uncles |  |
| **total_difficulty** | **String** | Numeric representation of the block total difficulty |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::GetBlockDetailsByBlockHeightRIBSBSC.new(
  difficulty: 209515044.4071968,
  nonce: 1535290446,
  size: 3892,
  extra_data: null,
  gas_limit: null,
  gas_used: null,
  mined_in_seconds: null,
  sha3_uncles: null,
  total_difficulty: null
)
```

