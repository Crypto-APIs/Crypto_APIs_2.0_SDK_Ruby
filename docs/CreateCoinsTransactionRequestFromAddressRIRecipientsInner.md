# CryptoApis::CreateCoinsTransactionRequestFromAddressRIRecipientsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address** | **String** | Defines the destination address. |  |
| **address_tag** | **Integer** | Defines a specific Tag that is an additional XRP address feature. It helps identify a transaction recipient beyond a wallet address. The tag that was encoded into the x-Address along with the Source Classic Address. | [optional] |
| **amount** | **String** | Defines the amount sent to the destination address. |  |
| **classic_address** | **String** | Represents the public address, which is a compressed and shortened form of a public key. The classic address is shown when the source address is an x-Address. | [optional] |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::CreateCoinsTransactionRequestFromAddressRIRecipientsInner.new(
  address: 0x1316bea88fb7cd4ccc4a57e2f9f4f43d1a86ee59,
  address_tag: 3999472835,
  amount: 0.0023,
  classic_address: rA9bXGJcXvZKaWofrRphdJsBWzhyCfH3z
)
```

