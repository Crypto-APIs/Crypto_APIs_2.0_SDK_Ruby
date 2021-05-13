# CryptoApis::ListXRPRippleTransactionsByAddressRIFee

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **String** | Defines the amount of the transaction fee. |  |
| **unit** | **String** | Defines the unit of the transaction fee. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::ListXRPRippleTransactionsByAddressRIFee.new(
  amount: 0.000024,
  unit: XRP
)
```

