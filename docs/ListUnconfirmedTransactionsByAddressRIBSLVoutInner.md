# CryptoApis::ListUnconfirmedTransactionsByAddressRIBSLVoutInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **is_spent** | **Boolean** | Defines whether the output is spent or not. |  |
| **script_pub_key** | [**GetTransactionDetailsByTransactionIDRIBSLVoutInnerScriptPubKey**](GetTransactionDetailsByTransactionIDRIBSLVoutInnerScriptPubKey.md) |  |  |
| **value** | **String** | String representation of the amount |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::ListUnconfirmedTransactionsByAddressRIBSLVoutInner.new(
  is_spent: false,
  script_pub_key: null,
  value: 0.03505975
)
```

