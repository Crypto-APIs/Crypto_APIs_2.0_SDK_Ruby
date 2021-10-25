# CryptoApis::GetEIP1559FeeRecommendationsRIMaxPriorityFeePerGas

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **fast** | **String** | Represents the fast maximum priority fee per gas, calculated from unconfirmed transactions. |  |
| **slow** | **String** | Represents the slow maximum priority fee per gas, calculated from unconfirmed transactions. |  |
| **standard** | **String** | Represents the standard maximum priority fee per gas, calculated from unconfirmed transactions. |  |
| **unit** | **String** | Represents the unit of the maximum priority fee per gas. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::GetEIP1559FeeRecommendationsRIMaxPriorityFeePerGas.new(
  fast: 47085140300,
  slow: 37331114417,
  standard: 41987372497,
  unit: WEI
)
```

