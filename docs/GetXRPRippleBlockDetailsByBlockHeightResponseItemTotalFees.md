# CryptoApis::GetXRPRippleBlockDetailsByBlockHeightResponseItemTotalFees

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **String** | Defines the amount of all fees included in the specific block. |  |
| **unit** | **String** | Defines the unit of all fees included in the specific block. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::GetXRPRippleBlockDetailsByBlockHeightResponseItemTotalFees.new(
  amount: 0.004487,
  unit: XRP
)
```

