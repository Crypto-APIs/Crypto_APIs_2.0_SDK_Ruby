# CryptoApis::DecodeXAddressRI

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address_tag** | **Integer** | Defines a specific Tag that is an additional XRP address feature. It helps identifying a transaction recipient beyond a wallet address. |  |
| **classic_address** | **String** | Represents the public address, which is a compressed and shortened form of a public key. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::DecodeXAddressRI.new(
  address_tag: 3999472835,
  classic_address: rA9bXGJcXvZKaWofrRphdJsBWzhyCfH3z
)
```

