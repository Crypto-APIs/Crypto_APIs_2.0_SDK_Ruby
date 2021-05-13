# CryptoApis::ListTransactionsByAddressRIBSD2Vout

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **is_spent** | **Boolean** | Defines whether the output is spent or not. |  |
| **script_pub_key** | [**ListTransactionsByAddressRIBSD2ScriptPubKey**](ListTransactionsByAddressRIBSD2ScriptPubKey.md) |  |  |
| **value** | **String** | Represents the sent/received amount. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::ListTransactionsByAddressRIBSD2Vout.new(
  is_spent: false,
  script_pub_key: null,
  value: 7.76020409
)
```

