# CryptoApis::ListLatestMinedBlocksRIBSXTotalFees

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **String** | Defines the amount of all fees. |  |
| **unit** | **String** | Defines the unit of the amount of all fees. | [optional] |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::ListLatestMinedBlocksRIBSXTotalFees.new(
  amount: 0.00001,
  unit: ETH
)
```

