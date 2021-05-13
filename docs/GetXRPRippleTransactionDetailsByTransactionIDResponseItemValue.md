# CryptoApis::GetXRPRippleTransactionDetailsByTransactionIDResponseItemValue

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **String** | Defines the amount of the value. |  |
| **unit** | **String** | Defines the unit of the value. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::GetXRPRippleTransactionDetailsByTransactionIDResponseItemValue.new(
  amount: 3.0254,
  unit: XRP
)
```

