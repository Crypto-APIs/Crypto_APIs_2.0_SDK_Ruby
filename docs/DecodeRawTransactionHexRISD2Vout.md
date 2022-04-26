# CryptoApis::DecodeRawTransactionHexRISD2Vout

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **script_pub_key** | [**DecodeRawTransactionHexRISD2ScriptPubKey**](DecodeRawTransactionHexRISD2ScriptPubKey.md) |  |  |
| **value** | **String** | Represents the sent/received amount. | [optional] |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::DecodeRawTransactionHexRISD2Vout.new(
  script_pub_key: null,
  value: 11.25
)
```

