# CryptoApis::DecodeRawTransactionHexRISDVout

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **script_pub_key** | [**DecodeRawTransactionHexRISDScriptPubKey**](DecodeRawTransactionHexRISDScriptPubKey.md) |  |  |
| **value** | **String** | Represents the sent/received amount. | [optional] |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::DecodeRawTransactionHexRISDVout.new(
  script_pub_key: null,
  value: 0.5896
)
```

