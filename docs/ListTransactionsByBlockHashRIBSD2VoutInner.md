# CryptoApis::ListTransactionsByBlockHashRIBSD2VoutInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **is_spent** | **Boolean** | Defines whether the output is spent or not. |  |
| **script_pub_key** | [**ListTransactionsByBlockHashRIBSD2VoutInnerScriptPubKey**](ListTransactionsByBlockHashRIBSD2VoutInnerScriptPubKey.md) |  |  |
| **value** | **String** | Represents the sent/received amount. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::ListTransactionsByBlockHashRIBSD2VoutInner.new(
  is_spent: false,
  script_pub_key: null,
  value: 10000
)
```

