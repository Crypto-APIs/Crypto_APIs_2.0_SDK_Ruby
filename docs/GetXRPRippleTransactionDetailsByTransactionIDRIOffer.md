# CryptoApis::GetXRPRippleTransactionDetailsByTransactionIDRIOffer

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **String** | Defines the amount of the offer. |  |
| **unit** | **String** | Defines the unit of the offer. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::GetXRPRippleTransactionDetailsByTransactionIDRIOffer.new(
  amount: 3.0154,
  unit: XRP
)
```

