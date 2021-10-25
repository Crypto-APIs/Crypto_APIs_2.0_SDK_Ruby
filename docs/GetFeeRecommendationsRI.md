# CryptoApis::GetFeeRecommendationsRI

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **unit** | **String** | Defines the unit of the fee, e.g. BTC. |  |
| **fast** | **String** | Fast fee per byte calculated from unconfirmed transactions |  |
| **slow** | **String** | Slow fee per byte calculated from unconfirmed transactions |  |
| **standard** | **String** | Standard fee per byte calculated from unconfirmed transactions |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::GetFeeRecommendationsRI.new(
  unit: BTC,
  fast: 0.00000021,
  slow: 0.00000021,
  standard: 0.00000021
)
```

