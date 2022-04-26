# CryptoApis::DecodeRawTransactionHexRISB2Vout

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **script_pub_key** | [**DecodeRawTransactionHexRISB2ScriptPubKey**](DecodeRawTransactionHexRISB2ScriptPubKey.md) |  |  |
| **value** | **String** | Represents the sent/received amount. | [optional] |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::DecodeRawTransactionHexRISB2Vout.new(
  script_pub_key: null,
  value: 0.00014400
)
```

