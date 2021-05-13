# CryptoApis::GetXRPRippleTransactionDetailsByTransactionIDRIReceive

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **String** | Defines the amount of the funds for which an offer is made. |  |
| **unit** | **String** | Defines the unit of the funds for which an offer is made. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::GetXRPRippleTransactionDetailsByTransactionIDRIReceive.new(
  amount: 2.1256,
  unit: XRP
)
```

