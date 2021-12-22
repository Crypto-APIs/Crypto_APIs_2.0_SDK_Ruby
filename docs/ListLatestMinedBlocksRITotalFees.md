# CryptoApis::ListLatestMinedBlocksRITotalFees

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **String** | Defines the amount of all fees. |  |
| **unit** | **String** | Defines the unit of the amount of all fees. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::ListLatestMinedBlocksRITotalFees.new(
  amount: 0.00001,
  unit: ETH
)
```

