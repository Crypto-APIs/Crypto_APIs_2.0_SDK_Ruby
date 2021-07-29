# CryptoApis::CreateCoinsTransactionRequestFromWalletRBDataItemRecipients

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address** | **String** | Defines the specific recipient/destination address. |  |
| **amount** | **String** | Represents the specific amount of the transaction&#39;s destination. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::CreateCoinsTransactionRequestFromWalletRBDataItemRecipients.new(
  address: 0x6f61e3c2fbb8c8be698bd0907ba6c04b62800fe5,
  amount: 0.125
)
```

