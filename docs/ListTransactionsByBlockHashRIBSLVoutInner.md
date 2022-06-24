# CryptoApis::ListTransactionsByBlockHashRIBSLVoutInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **is_spent** | **Boolean** | Defines whether the output is spent or not. |  |
| **script_pub_key** | [**ListTransactionsByBlockHashRIBSLVoutInnerScriptPubKey**](ListTransactionsByBlockHashRIBSLVoutInnerScriptPubKey.md) |  |  |
| **value** | **String** | Represents the sent/received amount. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::ListTransactionsByBlockHashRIBSLVoutInner.new(
  is_spent: false,
  script_pub_key: null,
  value: 0.03505975
)
```

