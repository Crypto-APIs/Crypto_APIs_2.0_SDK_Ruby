# CryptoApis::ListTransactionsByAddressRIBSBVin

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **addresses** | **Array&lt;String&gt;** |  |  |
| **coinbase** | **String** | Represents the coinbase hex. | [optional] |
| **script_sig** | [**GetTransactionDetailsByTransactionIDRIBSBScriptSig**](GetTransactionDetailsByTransactionIDRIBSBScriptSig.md) |  |  |
| **sequence** | **String** | Represents the script sequence number. |  |
| **txid** | **String** | Represents the reference transaction identifier. | [optional] |
| **txinwitness** | **Array&lt;String&gt;** |  |  |
| **value** | **String** | Represents the sent/received amount. | [optional] |
| **vout** | **Integer** | Defines the vout of the transaction output, i.e. which output to spend. | [optional] |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::ListTransactionsByAddressRIBSBVin.new(
  addresses: null,
  coinbase: 0399991d20706f6f6c2e656e6a6f79626f646965732e636f6d20393963336532346234374747a53e994c4a000001,
  script_sig: null,
  sequence: 4294967295,
  txid: caee978cae255bbe303ac86152679e46113a8b12925aa3afaa312d89d11ccbf8,
  txinwitness: null,
  value: 0.00873472,
  vout: 1
)
```

