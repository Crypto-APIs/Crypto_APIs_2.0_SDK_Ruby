# OpenapiClient::ListTransactionsByBlockHashResponseItemBlockchainSpecificBitcoinCashVin

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **addresses** | **Array&lt;String&gt;** |  |  |
| **coinbase** | **String** | Represents the coinbase hex. |  |
| **script_sig** | [**GetTransactionDetailsByTransactionIDResponseItemBlockchainSpecificBitcoinScriptSig**](GetTransactionDetailsByTransactionIDResponseItemBlockchainSpecificBitcoinScriptSig.md) |  |  |
| **sequence** | **String** | Represents the script sequence number. |  |
| **txid** | **String** | Represents the reference transaction identifier. |  |
| **txinwitness** | **Array&lt;String&gt;** |  |  |
| **value** | **String** | Represents the sent/received amount. |  |
| **vout** | **Integer** | It refers to the index of the output address of this transaction. The index starts from 0. |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ListTransactionsByBlockHashResponseItemBlockchainSpecificBitcoinCashVin.new(
  addresses: null,
  coinbase: 0399991d20706f6f6c2e656e6a6f79626f646965732e636f6d20393963336532346234374747a53e994c4a000001,
  script_sig: null,
  sequence: 4294967295,
  txid: caee978cae255bbe303ac86152679e46113a8b12925aa3afaa312d89d11ccbf8,
  txinwitness: null,
  value: 0.00873472,
  vout: 2
)
```

