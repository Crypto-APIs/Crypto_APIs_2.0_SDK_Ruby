# CryptoApis::GetAssetDetailsByAssetIDRILatestRate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **String** | Represents the amount of the latest rate. |  |
| **calculation_timestamp** | **Integer** | Defines when the price was calculated in UNIX timestamp. Oldest possible timestamp is 30 days. | [optional] |
| **unit** | **String** | Specifies the unit of the latest price of the asset. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::GetAssetDetailsByAssetIDRILatestRate.new(
  amount: 61704.20995670996,
  calculation_timestamp: 1636107864,
  unit: USD
)
```

