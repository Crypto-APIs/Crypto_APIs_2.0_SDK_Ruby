# CryptoApis::GetEIP1559FeeRecommendationsRIMaxFeePerGas

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **fast** | **String** | Represents the fast maximum fee per gas, calculated from unconfirmed transactions. |  |
| **slow** | **String** | Represents the slow maximum fee per gas, calculated from unconfirmed transactions. |  |
| **standard** | **String** | Represents the standard maximum fee per gas, calculated from unconfirmed transactions. |  |
| **unit** | **String** | Represents the unit of the maximum fee per gas. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::GetEIP1559FeeRecommendationsRIMaxFeePerGas.new(
  fast: 75235090892,
  slow: 67416761254,
  standard: 69996407508,
  unit: WEI
)
```

