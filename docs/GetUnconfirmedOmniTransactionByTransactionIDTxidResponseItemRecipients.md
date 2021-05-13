# CryptoApis::GetUnconfirmedOmniTransactionByTransactionIDTxidResponseItemRecipients

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address** | **String** | Represents the hash of the address that receives the funds. |  |
| **amount** | **String** | Defines the amount of the received funds as a string. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::GetUnconfirmedOmniTransactionByTransactionIDTxidResponseItemRecipients.new(
  address: mpBjRU6F2YrgWwxtMw4Fp1hikqPdrx6spB,
  amount: 0.1
)
```

