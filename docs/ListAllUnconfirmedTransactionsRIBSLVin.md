# CryptoApis::ListAllUnconfirmedTransactionsRIBSLVin

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **addresses** | **Array&lt;String&gt;** |  |  |
| **script_sig** | [**ListConfirmedTransactionsByAddressRIBSLScriptSig**](ListConfirmedTransactionsByAddressRIBSLScriptSig.md) |  |  |
| **sequence** | **String** | Represents the script sequence number. |  |
| **txid** | **String** | Represents the reference transaction identifier. |  |
| **txinwitness** | **Array&lt;String&gt;** |  |  |
| **value** | **String** | Represents the sent/received amount. |  |
| **vout** | **Integer** | Defines the vout of the transaction output, i.e. which output to spend. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::ListAllUnconfirmedTransactionsRIBSLVin.new(
  addresses: null,
  script_sig: null,
  sequence: 4294967294,
  txid: 1db56e1e8dfab84f6f0e33f8ddb160c9b16286471a3b486d79ea85bcf4d076b2,
  txinwitness: null,
  value: 0.0225,
  vout: 1
)
```

