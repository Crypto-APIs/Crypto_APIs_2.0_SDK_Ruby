# CryptoApis::GetOmniTransactionDetailsByTransactionIDTxidRISendersInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address** | **String** | Represents the hash of the address that provides the funds. |  |
| **amount** | **String** | Represents the total amount sent by this address including the fee. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::GetOmniTransactionDetailsByTransactionIDTxidRISendersInner.new(
  address: ms4KNsbNpoU8g424pzmEjbkFbfAHae1msB,
  amount: 0.00000546
)
```

