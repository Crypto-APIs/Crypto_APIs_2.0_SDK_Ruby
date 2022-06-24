# CryptoApis::GetZilliqaTransactionDetailsByTransactionIDRIRecipientsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address** | **String** | Represents the hash of the address that receives the funds. |  |
| **amount** | **String** | Defines the amount of the received funds as a string. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::GetZilliqaTransactionDetailsByTransactionIDRIRecipientsInner.new(
  address: zil1v25at4s3eh9w34uqqhe3vdvfsvcwq6un3fupc2,
  amount: 0
)
```

