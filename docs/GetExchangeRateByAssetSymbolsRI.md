# CryptoApis::GetExchangeRateByAssetSymbolsRI

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **calculation_timestamp** | **Integer** | Defines the time of the market data used to calculate the exchange rate in UNIX Timestamp. Oldest possible timestamp is 30 days. |  |
| **from_asset_id** | **String** | Defines the base asset Reference ID to get a rate for. |  |
| **from_asset_symbol** | **String** | Defines the base asset symbol to get a rate for. |  |
| **rate** | **String** | Defines the exchange rate between assets calculated by weighted average of the last trades in every exchange for the last 24 hours by giving more weight to exchanges with higher volume. |  |
| **to_asset_id** | **String** | Defines the relation asset Reference ID in which the base asset rate will be displayed. |  |
| **to_asset_symbol** | **String** | Defines the relation asset symbol in which the base asset rate will be displayed. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::GetExchangeRateByAssetSymbolsRI.new(
  calculation_timestamp: 1618577849,
  from_asset_id: 5b1ea92e584bf50020130612,
  from_asset_symbol: BTC,
  rate: 54768.26745499848,
  to_asset_id: 5b1ea92e584bf50020130615,
  to_asset_symbol: USD
)
```

