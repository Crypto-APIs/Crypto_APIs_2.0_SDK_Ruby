# CryptoApis::ListAssetsDetailsRISC

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_1_hour_price_change_in_percentage** | **String** | Represents the percentage of the asset&#39;s current price against the its price from 1 hour ago. |  |
| **_1_week_price_change_in_percentage** | **String** | Represents the percentage of the asset&#39;s current price against the its price from 1 week ago. |  |
| **_24_hours_price_change_in_percentage** | **String** | Represents the percentage of the asset&#39;s current price against the its price from 24 hours ago. |  |
| **_24_hours_trading_volume** | **String** | Represents the trading volume of the asset for the time frame of 24 hours. |  |
| **asset_type** | **String** | Subtype of the crypto assets. Could be COIN or TOKEN |  |
| **circulating_supply** | **String** | Represents the amount of the asset that is circulating on the market and in public hands. |  |
| **market_cap_in_usd** | **String** | Defines the total market value of the asset&#39;s circulating supply in USD. |  |
| **max_supply** | **String** | Represents the maximum amount of all coins of a specific asset that will ever exist in its lifetime. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::ListAssetsDetailsRISC.new(
  _1_hour_price_change_in_percentage: -2.52,
  _1_week_price_change_in_percentage: -10.18,
  _24_hours_price_change_in_percentage: -3.37,
  _24_hours_trading_volume: 2871630447,
  asset_type: coin,
  circulating_supply: 123564.25,
  market_cap_in_usd: 1,056,050,713,184,
  max_supply: 18,562,881
)
```

