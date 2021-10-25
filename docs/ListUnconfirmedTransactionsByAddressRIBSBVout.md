# CryptoApis::ListUnconfirmedTransactionsByAddressRIBSBVout

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **is_spent** | **Boolean** | Defines whether the output is spent or not. |  |
| **script_pub_key** | [**ListUnconfirmedTransactionsByAddressRIBSBScriptPubKey**](ListUnconfirmedTransactionsByAddressRIBSBScriptPubKey.md) |  |  |
| **value** | **String** | Represents the sent/received amount. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::ListUnconfirmedTransactionsByAddressRIBSBVout.new(
  is_spent: true,
  script_pub_key: null,
  value: 0.09720621
)
```
