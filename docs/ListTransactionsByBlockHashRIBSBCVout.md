# CryptoApis::ListTransactionsByBlockHashRIBSBCVout

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **is_spent** | **Boolean** | Defines whether the output is spent or not. |  |
| **script_pub_key** | [**ListTransactionsByBlockHashRIBSBCScriptPubKey**](ListTransactionsByBlockHashRIBSBCScriptPubKey.md) |  |  |
| **value** | **String** | Represents the sent/received amount. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::ListTransactionsByBlockHashRIBSBCVout.new(
  is_spent: false,
  script_pub_key: null,
  value: 0.000122
)
```

