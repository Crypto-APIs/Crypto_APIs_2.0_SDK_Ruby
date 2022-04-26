# CryptoApis::DecodeRawTransactionHexRISLVout

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **script_pub_key** | [**DecodeRawTransactionHexRISLScriptPubKey**](DecodeRawTransactionHexRISLScriptPubKey.md) |  |  |
| **value** | **String** | Represents the sent/received amount. | [optional] |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::DecodeRawTransactionHexRISLVout.new(
  script_pub_key: null,
  value: 0.03505975
)
```

