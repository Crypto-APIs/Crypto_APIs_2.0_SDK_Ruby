# CryptoApis::GetXRPRippleAddressDetailsRIBalance

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **String** | Represents the total amount of the balance. |  |
| **unit** | **String** | Represents the unit used for the balance. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::GetXRPRippleAddressDetailsRIBalance.new(
  amount: 22.0000,
  unit: XRP
)
```

