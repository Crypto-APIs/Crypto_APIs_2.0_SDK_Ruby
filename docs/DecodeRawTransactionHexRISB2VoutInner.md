# CryptoApis::DecodeRawTransactionHexRISB2VoutInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **script_pub_key** | [**DecodeRawTransactionHexRISB2VoutInnerScriptPubKey**](DecodeRawTransactionHexRISB2VoutInnerScriptPubKey.md) |  |  |
| **value** | **String** | Represents the sent/received amount. | [optional] |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::DecodeRawTransactionHexRISB2VoutInner.new(
  script_pub_key: null,
  value: 0.00014400
)
```

