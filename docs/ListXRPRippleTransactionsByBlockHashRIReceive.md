# CryptoApis::ListXRPRippleTransactionsByBlockHashRIReceive

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **String** | Defines the received amount. |  |
| **unit** | **String** | Defines the unit of the received amount. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::ListXRPRippleTransactionsByBlockHashRIReceive.new(
  amount: 6.2354,
  unit: XRP
)
```

