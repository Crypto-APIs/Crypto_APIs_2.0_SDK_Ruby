# CryptoApis::GetTransactionDetailsByTransactionIDFromCallbackRIBSBVin

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **addresses** | **Array&lt;String&gt;** |  |  |
| **coinbase** | **String** | Represents the coinbase hex. | [optional] |
| **script_sig** | [**GetTransactionDetailsByTransactionIDFromCallbackRIBSBScriptSig**](GetTransactionDetailsByTransactionIDFromCallbackRIBSBScriptSig.md) |  |  |
| **sequence** | **Integer** | Represents the script sequence number. |  |
| **txid** | **String** | Represents the reference transaction identifier. | [optional] |
| **txinwitness** | **Array&lt;String&gt;** |  |  |
| **value** | **String** | Represents the sent/received amount. | [optional] |
| **vout** | **Integer** | It refers to the index of the output address of this transaction. The index starts from 0. | [optional] |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::GetTransactionDetailsByTransactionIDFromCallbackRIBSBVin.new(
  addresses: null,
  coinbase: 0399991d20706f6f6c2e656e6a6f79626f646965732e636f6d20393963336532346234374747a53e994c4a000001,
  script_sig: null,
  sequence: 4294967295,
  txid: fd572c11a7e3eb39251746a9b2f4f53d5218b7cd0fb6e82ba48e678211d677c9,
  txinwitness: null,
  value: 0.00002,
  vout: 1
)
```

