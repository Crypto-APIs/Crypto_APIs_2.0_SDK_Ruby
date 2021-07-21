# CryptoApis::CreateCoinsTransactionRequestFromAddressRIRecipients

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address** | **String** | Defines the destination address. |  |
| **amount** | **String** | Defines the amount sent to the destination address. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::CreateCoinsTransactionRequestFromAddressRIRecipients.new(
  address: 0x1316bea88fb7cd4ccc4a57e2f9f4f43d1a86ee59,
  amount: 0.0023
)
```

