# CryptoApis::CreateCoinsTransactionRequestFromWalletRBDataItemRecipientsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address** | **String** | Defines the specific recipient/destination address. |  |
| **amount** | **String** | Represents the specific amount of the transaction&#39;s destination. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::CreateCoinsTransactionRequestFromWalletRBDataItemRecipientsInner.new(
  address: 2MtzNEqm2D9jcbPJ5mW7Z3AUNwqt3afZH66,
  amount: 0.125
)
```

