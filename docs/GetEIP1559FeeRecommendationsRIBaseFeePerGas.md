# CryptoApis::GetEIP1559FeeRecommendationsRIBaseFeePerGas

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **unit** | **String** | Represents the unit of the base fee per gas. |  |
| **value** | **String** | Represents the expected base fee per gas of the upcoming block, calculated from the previous block data. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::GetEIP1559FeeRecommendationsRIBaseFeePerGas.new(
  unit: WEI,
  value: 45265143502
)
```

