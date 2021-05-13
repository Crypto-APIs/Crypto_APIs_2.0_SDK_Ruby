# CryptoApis::ListTransactionsByBlockHashRIBSLVin

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **addresses** | **Array&lt;String&gt;** |  |  |
| **coinbase** | **String** | Represents the coinbase hex. | [optional] |
| **script_sig** | [**GetTransactionDetailsByTransactionIDRIBSLScriptSig**](GetTransactionDetailsByTransactionIDRIBSLScriptSig.md) |  |  |
| **sequence** | **String** | Represents the script sequence number. |  |
| **txid** | **String** | Represents the reference transaction identifier. |  |
| **txinwitness** | **Array&lt;String&gt;** |  |  |
| **value** | **String** | Represents the sent/received amount. |  |
| **vout** | **Integer** | It refers to the index of the output address of this transaction. The index starts from 0. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::ListTransactionsByBlockHashRIBSLVin.new(
  addresses: null,
  coinbase: 0382221c04d6e05160086800002d090000000d2f6e6f64655374726174756d2f,
  script_sig: null,
  sequence: 4294967294,
  txid: 1db56e1e8dfab84f6f0e33f8ddb160c9b16286471a3b486d79ea85bcf4d076b2,
  txinwitness: null,
  value: 0.0225,
  vout: 2
)
```

