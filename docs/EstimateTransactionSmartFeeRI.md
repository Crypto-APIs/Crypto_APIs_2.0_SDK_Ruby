# CryptoApis::EstimateTransactionSmartFeeRI

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **confirmation_target** | **Integer** | Represents the confirmation target in blocks |  |
| **fee_rate** | **String** | Represents the Fee Rate value. |  |
| **unit** | **String** | Defines the fee unit. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::EstimateTransactionSmartFeeRI.new(
  confirmation_target: 2,
  fee_rate: 0.00001,
  unit: BTC
)
```

