# CryptoApis::GetAssetDetailsByAssetSymbolRISC

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_1_hour_price_change_in_percentage** | **String** | Represents the percentage of the asset&#39;s current price against the its price from 1 hour ago. |  |
| **_1_week_price_change_in_percentage** | **String** | Represents the percentage of the asset&#39;s current price against the its price from 1 week ago. |  |
| **_24_hours_price_change_in_percentage** | **String** | Represents the percentage of the asset&#39;s current price against the its price from 24 hours ago. |  |
| **_24_hours_trading_volume** | **String** | Represents the trading volume of the asset for the time frame of 24 hours. |  |
| **asset_type** | **String** | Defines the type of the supported asset. This could be either \&quot;crypto\&quot; or \&quot;fiat\&quot;. |  |
| **circulating_supply** | **String** | Represents the amount of the asset that is circulating on the market and in public hands. |  |
| **market_cap_in_usd** | **String** | Defines the total market value of the asset&#39;s circulating supply in USD. |  |
| **max_supply** | **String** | Represents the maximum amount of all coins of a specific asset that will ever exist in its lifetime. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::GetAssetDetailsByAssetSymbolRISC.new(
  _1_hour_price_change_in_percentage: -0.4277852328344024,
  _1_week_price_change_in_percentage: 1.6572304104646762,
  _24_hours_price_change_in_percentage: -0.059688916478600924,
  _24_hours_trading_volume: 3116834672.508857,
  asset_type: coin,
  circulating_supply: 18562881,
  market_cap_in_usd: 1146119021006.8835,
  max_supply: 21000000
)
```

