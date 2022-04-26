# CryptoApis::DecodeRawTransactionHexRISBVout

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **script_pub_key** | [**DecodeRawTransactionHexRISBScriptPubKey**](DecodeRawTransactionHexRISBScriptPubKey.md) |  |  |
| **value** | **String** | Represents the sent/received amount. | [optional] |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::DecodeRawTransactionHexRISBVout.new(
  script_pub_key: null,
  value: 0.00014400
)
```

