# CryptoApis::DecodeRawTransactionHexRISZVoutInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **script_pub_key** | [**DecodeRawTransactionHexRISZVoutInnerScriptPubKey**](DecodeRawTransactionHexRISZVoutInnerScriptPubKey.md) |  |  |
| **value** | **String** | Defines the specific amount. | [optional] |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::DecodeRawTransactionHexRISZVoutInner.new(
  script_pub_key: null,
  value: 2.50003291
)
```

