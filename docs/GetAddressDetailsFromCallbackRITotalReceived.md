# CryptoApis::GetAddressDetailsFromCallbackRITotalReceived

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **String** | Defines the total amount of all coins received to the address, based on confirmed transactions. | [optional] |
| **unit** | **String** | Represents the unit of the total received amount. | [optional] |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::GetAddressDetailsFromCallbackRITotalReceived.new(
  amount: 5.6,
  unit: BTC
)
```

