# CryptoApis::GetBlockDetailsByBlockHashRIBSZ2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **difficulty** | **String** | Represents a mathematical value of how hard it is to find a valid hash for this block. |  |
| **ds_block** | **Integer** | Numeric representation of the ds block |  |
| **ds_difficulty** | **String** | Numeric representation of the ds difficulty |  |
| **ds_leader** | **String** | String representation of the ds leader |  |
| **gas_limit** | **Integer** | Numeric representation of the block gas_limit |  |
| **gas_used** | **Integer** | Numeric representation of the block gas_limit |  |
| **micro_blocks** | **Array&lt;String&gt;** |  |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::GetBlockDetailsByBlockHashRIBSZ2.new(
  difficulty: 209515044.4071968,
  ds_block: 18531,
  ds_difficulty: 169,
  ds_leader: zil1wkcgpkyfvq90xkapnla58hk63dvauxjy2kwtlr,
  gas_limit: 550000,
  gas_used: 3660,
  micro_blocks: null
)
```

