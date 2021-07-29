# CryptoApis::GetAddressDetailsRITotalReceived

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **String** | Defines the total amount of all coins received to the address, based on confirmed transactions. |  |
| **unit** | **String** |  |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::GetAddressDetailsRITotalReceived.new(
  amount: 5.6,
  unit: null
)
```

