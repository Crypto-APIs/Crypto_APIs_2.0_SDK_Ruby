# CryptoApis::GetEIP1559FeeRecommendationsRI

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **base_fee_per_gas** | [**GetEIP1559FeeRecommendationsRIBaseFeePerGas**](GetEIP1559FeeRecommendationsRIBaseFeePerGas.md) |  |  |
| **max_fee_per_gas** | [**GetEIP1559FeeRecommendationsRIMaxFeePerGas**](GetEIP1559FeeRecommendationsRIMaxFeePerGas.md) |  |  |
| **max_priority_fee_per_gas** | [**GetEIP1559FeeRecommendationsRIMaxPriorityFeePerGas**](GetEIP1559FeeRecommendationsRIMaxPriorityFeePerGas.md) |  |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::GetEIP1559FeeRecommendationsRI.new(
  base_fee_per_gas: null,
  max_fee_per_gas: null,
  max_priority_fee_per_gas: null
)
```

