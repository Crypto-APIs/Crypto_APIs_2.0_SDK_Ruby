# CryptoApis::GetAddressBalanceRIConfirmedBalance

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **String** | Defines the total balance of the address that is confirmed. It doesn&#39;t include unconfirmed transactions. |  |
| **unit** | **String** | Represents the unit of the confirmed balance. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::GetAddressBalanceRIConfirmedBalance.new(
  amount: 3.25,
  unit: TRX
)
```

