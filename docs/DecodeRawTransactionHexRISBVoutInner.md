# CryptoApis::DecodeRawTransactionHexRISBVoutInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **script_pub_key** | [**DecodeRawTransactionHexRISBVoutInnerScriptPubKey**](DecodeRawTransactionHexRISBVoutInnerScriptPubKey.md) |  |  |
| **value** | **String** | Represents the sent/received amount. | [optional] |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::DecodeRawTransactionHexRISBVoutInner.new(
  script_pub_key: null,
  value: 0.00014400
)
```

