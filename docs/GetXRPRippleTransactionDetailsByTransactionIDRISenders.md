# CryptoApis::GetXRPRippleTransactionDetailsByTransactionIDRISenders

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address** | **String** | Represents the hash of the address that provides the funds. |  |
| **amount** | **String** | Defines the amount of the sent funds as a string. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::GetXRPRippleTransactionDetailsByTransactionIDRISenders.new(
  address: rNUY3X3HovAXuTesTbMh8PAX6CM5V2RzMY,
  amount: 0.00001
)
```

