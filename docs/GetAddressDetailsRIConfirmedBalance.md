# CryptoApis::GetAddressDetailsRIConfirmedBalance

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **String** | Object representation of the total balance of the address |  |
| **unit** | **String** | Represents the unit of the confirmed balance. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::GetAddressDetailsRIConfirmedBalance.new(
  amount: null,
  unit: BTC
)
```

