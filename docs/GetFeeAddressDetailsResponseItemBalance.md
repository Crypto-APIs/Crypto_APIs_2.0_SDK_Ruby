# CryptoApis::GetFeeAddressDetailsResponseItemBalance

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **String** | Represents the amount of the units in fee address. |  |
| **unit** | **String** | Represents the unit of the fee spent for the forwarded tokens, e.g. BTC. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::GetFeeAddressDetailsResponseItemBalance.new(
  amount: 0.01,
  unit: ETH
)
```

