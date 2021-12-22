# CryptoApis::GetTransactionDetailsByTransactionIDFromCallbackRIBSXValue

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **String** | Defines the amount of the value. |  |
| **unit** | **String** | Defines the unit of the value. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::GetTransactionDetailsByTransactionIDFromCallbackRIBSXValue.new(
  amount: 0.000001,
  unit: XRP
)
```

