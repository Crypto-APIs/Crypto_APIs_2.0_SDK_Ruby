# CryptoApis::CreateCoinsTransactionRequestFromWalletRIRecipients

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address** | **String** | Defines the specific destination address. |  |
| **amount** | **String** | Represents the specific amount of the transaction&#39;s destination. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::CreateCoinsTransactionRequestFromWalletRIRecipients.new(
  address: mmd963W1fECjLyaDCHcioSCZYHkRwjkhtr,
  amount: 0.00123
)
```

