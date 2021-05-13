# CryptoApis::ListAssetsDetailsResponseItemLatestRate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **String** | Specifies the amount of the latest price of the asset. |  |
| **calculation_timestamp** | **Integer** | Defines when the price was calculated in UNIX timestamp. | [optional] |
| **unit** | **String** | Specifies the unit of the latest price of the asset. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::ListAssetsDetailsResponseItemLatestRate.new(
  amount: 55249.960371879235,
  calculation_timestamp: 1618843796,
  unit: USD
)
```

