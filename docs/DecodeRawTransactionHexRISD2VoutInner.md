# CryptoApis::DecodeRawTransactionHexRISD2VoutInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **script_pub_key** | [**DecodeRawTransactionHexRISD2VoutInnerScriptPubKey**](DecodeRawTransactionHexRISD2VoutInnerScriptPubKey.md) |  |  |
| **value** | **String** | Represents the sent/received amount. | [optional] |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::DecodeRawTransactionHexRISD2VoutInner.new(
  script_pub_key: null,
  value: 11.25
)
```

