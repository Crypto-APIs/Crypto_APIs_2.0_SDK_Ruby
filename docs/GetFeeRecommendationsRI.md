# CryptoApis::GetFeeRecommendationsRI

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **unit** | **String** | Defines the unit of the fee, e.g. BTC. |  |
| **fast** | **String** | Fast fee per byte calculated from unconfirmed transactions |  |
| **slow** | **String** | Slow fee per byte calculated from unconfirmed transactions |  |
| **standard** | **String** | Standard fee per byte calculated from unconfirmed transactions |  |
| **fee_multiplier** | **String** | Represents the fee cushion multiplier used to multiply the base fee. | [optional] |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::GetFeeRecommendationsRI.new(
  unit: BTC,
  fast: 0.000025,
  slow: 0.000010,
  standard: 0.000015,
  fee_multiplier: 1.2
)
```

