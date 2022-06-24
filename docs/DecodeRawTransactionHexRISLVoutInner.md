# CryptoApis::DecodeRawTransactionHexRISLVoutInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **script_pub_key** | [**DecodeRawTransactionHexRISLVoutInnerScriptPubKey**](DecodeRawTransactionHexRISLVoutInnerScriptPubKey.md) |  |  |
| **value** | **String** | Represents the sent/received amount. | [optional] |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::DecodeRawTransactionHexRISLVoutInner.new(
  script_pub_key: null,
  value: 0.03505975
)
```

