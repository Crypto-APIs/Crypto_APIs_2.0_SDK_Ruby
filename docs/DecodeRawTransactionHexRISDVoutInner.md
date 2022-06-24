# CryptoApis::DecodeRawTransactionHexRISDVoutInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **script_pub_key** | [**DecodeRawTransactionHexRISDVoutInnerScriptPubKey**](DecodeRawTransactionHexRISDVoutInnerScriptPubKey.md) |  |  |
| **value** | **String** | Represents the sent/received amount. | [optional] |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::DecodeRawTransactionHexRISDVoutInner.new(
  script_pub_key: null,
  value: 0.5896
)
```

