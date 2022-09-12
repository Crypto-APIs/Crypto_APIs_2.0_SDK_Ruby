# CryptoApis::GetAddressDetailsFromCallbackRIConfirmedBalance

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **String** | Defines the total balance of the address that is confirmed. It doesn&#39;t include unconfirmed transactions. |  |
| **unit** | **String** | Represents the unit of the confirmed balance. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::GetAddressDetailsFromCallbackRIConfirmedBalance.new(
  amount: 12.5,
  unit: null
)
```

