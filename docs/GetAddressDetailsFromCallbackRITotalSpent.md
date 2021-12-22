# CryptoApis::GetAddressDetailsFromCallbackRITotalSpent

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **String** | Defines the total amount of all spent by this address coins, based on confirmed transactions. | [optional] |
| **unit** | **String** | Represents the unit of the total spent amount. | [optional] |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::GetAddressDetailsFromCallbackRITotalSpent.new(
  amount: 2.1,
  unit: BTC
)
```

