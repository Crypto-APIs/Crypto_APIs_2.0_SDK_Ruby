# CryptoApis::GetZilliqaAddressDetailsRIBalance

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **String** | Represents the amount of the address&#39;s balance. |  |
| **unit** | **String** | Represents the unit of the address&#39;s balance. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::GetZilliqaAddressDetailsRIBalance.new(
  amount: 23.125,
  unit: ZIL
)
```

