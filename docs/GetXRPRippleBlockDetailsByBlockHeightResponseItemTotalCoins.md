# CryptoApis::GetXRPRippleBlockDetailsByBlockHeightResponseItemTotalCoins

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **String** | Represents the total amount of all Coins of the block as a string. |  |
| **unit** | **String** | Represents the unit of total Coins of the block as a string. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::GetXRPRippleBlockDetailsByBlockHeightResponseItemTotalCoins.new(
  amount: 22.0012,
  unit: Drops
)
```

