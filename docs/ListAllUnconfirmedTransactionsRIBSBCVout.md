# CryptoApis::ListAllUnconfirmedTransactionsRIBSBCVout

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **is_spent** | **Boolean** | Defines whether the output is spent or not. |  |
| **script_pub_key** | [**GetTransactionDetailsByTransactionIDRIBSBCScriptPubKey**](GetTransactionDetailsByTransactionIDRIBSBCScriptPubKey.md) |  |  |
| **value** | **String** | Represents the sent/received amount. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::ListAllUnconfirmedTransactionsRIBSBCVout.new(
  is_spent: true,
  script_pub_key: null,
  value: 0.000122
)
```

