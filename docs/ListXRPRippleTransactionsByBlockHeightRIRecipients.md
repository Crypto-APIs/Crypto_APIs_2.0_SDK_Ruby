# CryptoApis::ListXRPRippleTransactionsByBlockHeightRIRecipients

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address** | **String** | String representation of the receiver address |  |
| **amount** | **String** | String representation of the amount |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::ListXRPRippleTransactionsByBlockHeightRIRecipients.new(
  address: rNUY3X3HovAXuTesTbMh8PAX6CM5V2RzMY,
  amount: 0.0001
)
```

