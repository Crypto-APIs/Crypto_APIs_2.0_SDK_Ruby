# CryptoApis::GetTransactionDetailsByTransactionIDFromCallbackRIBSZVoutInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **is_spent** | **Boolean** | Defines whether the transaction output has been spent or not. |  |
| **script_pub_key** | [**GetTransactionDetailsByTransactionIDFromCallbackRIBSZVoutInnerScriptPubKey**](GetTransactionDetailsByTransactionIDFromCallbackRIBSZVoutInnerScriptPubKey.md) |  |  |
| **value** | **String** | Represents the specific amount. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::GetTransactionDetailsByTransactionIDFromCallbackRIBSZVoutInner.new(
  is_spent: true,
  script_pub_key: null,
  value: 0.000144
)
```

