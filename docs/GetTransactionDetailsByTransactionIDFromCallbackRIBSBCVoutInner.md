# CryptoApis::GetTransactionDetailsByTransactionIDFromCallbackRIBSBCVoutInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **is_spent** | **Boolean** | Defines whether the output is spent or not. |  |
| **script_pub_key** | [**GetTransactionDetailsByTransactionIDFromCallbackRIBSBCVoutInnerScriptPubKey**](GetTransactionDetailsByTransactionIDFromCallbackRIBSBCVoutInnerScriptPubKey.md) |  |  |
| **value** | **String** | Represents the sent/received amount. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::GetTransactionDetailsByTransactionIDFromCallbackRIBSBCVoutInner.new(
  is_spent: false,
  script_pub_key: null,
  value: 0.000122
)
```

