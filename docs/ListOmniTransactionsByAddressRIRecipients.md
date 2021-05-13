# CryptoApis::ListOmniTransactionsByAddressRIRecipients

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address** | **String** | Represents the hash of the address that receives the funds. |  |
| **amount** | **String** | Defines the amount of the received funds as a string. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::ListOmniTransactionsByAddressRIRecipients.new(
  address: ms4KNsbNpoU8g424pzmEjbkFbfAHae1msB,
  amount: 0.1
)
```

