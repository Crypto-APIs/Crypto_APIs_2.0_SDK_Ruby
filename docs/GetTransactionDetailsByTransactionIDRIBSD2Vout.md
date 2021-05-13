# CryptoApis::GetTransactionDetailsByTransactionIDRIBSD2Vout

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **is_spent** | **Boolean** | Defines whether the output is spent or not. |  |
| **script_pub_key** | [**GetTransactionDetailsByTransactionIDRIBSD2ScriptPubKey**](GetTransactionDetailsByTransactionIDRIBSD2ScriptPubKey.md) |  |  |
| **value** | **String** | Represents the sent/received amount. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::GetTransactionDetailsByTransactionIDRIBSD2Vout.new(
  is_spent: false,
  script_pub_key: null,
  value: 0.5896
)
```

