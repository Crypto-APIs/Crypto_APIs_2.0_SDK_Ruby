# CryptoApis::GetTransactionDetailsByTransactionIDFromCallbackRIBSD2VoutInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **is_spent** | **Boolean** | Defines whether the output is spent or not. |  |
| **script_pub_key** | [**GetTransactionDetailsByTransactionIDFromCallbackRIBSD2VoutInnerScriptPubKey**](GetTransactionDetailsByTransactionIDFromCallbackRIBSD2VoutInnerScriptPubKey.md) |  |  |
| **value** | **String** | String representation of the amount |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::GetTransactionDetailsByTransactionIDFromCallbackRIBSD2VoutInner.new(
  is_spent: false,
  script_pub_key: null,
  value: 11.25
)
```

