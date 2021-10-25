# CryptoApis::ListUnconfirmedTransactionsByAddressRIBSDVin

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **addresses** | **Array&lt;String&gt;** |  |  |
| **script_sig** | [**ListConfirmedTransactionsByAddressRIBSDScriptSig**](ListConfirmedTransactionsByAddressRIBSDScriptSig.md) |  |  |
| **sequence** | **Integer** | Represents the script sequence number. |  |
| **txid** | **String** | Represents the reference transaction identifier. | [optional] |
| **txinwitness** | **Array&lt;String&gt;** |  |  |
| **value** | **String** | Represents the sent/received amount. |  |
| **vout** | **Integer** | It refers to the index of the output address of this transaction. The index starts from 0. | [optional] |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::ListUnconfirmedTransactionsByAddressRIBSDVin.new(
  addresses: null,
  script_sig: null,
  sequence: 4294967295,
  txid: e1945b5d7e05f6d5ff77983d8a701b806722063559ed2528721b23fcb50baf06,
  txinwitness: null,
  value: 0.0225,
  vout: 1
)
```

