# OpenapiClient::ListTransactionsByBlockHeightResponseItemBlockchainSpecificDogecoinVin

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **addresses** | **Array&lt;String&gt;** |  |  |
| **coinbase** | **String** | Represents the coinbase hex. | [optional] |
| **script_sig** | [**GetTransactionDetailsByTransactionIDResponseItemBlockchainSpecificDogecoinScriptSig**](GetTransactionDetailsByTransactionIDResponseItemBlockchainSpecificDogecoinScriptSig.md) |  |  |
| **sequence** | **String** | Represents the script sequence number. |  |
| **txid** | **String** | Represents the reference transaction identifier. | [optional] |
| **txinwitness** | **Array&lt;String&gt;** |  |  |
| **value** | **String** | Represents the sent/received amount. |  |
| **vout** | **Integer** | It refers to the index of the output address of this transaction. The index starts from 0. |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ListTransactionsByBlockHeightResponseItemBlockchainSpecificDogecoinVin.new(
  addresses: null,
  coinbase: 03dcf4150c0b2f454233322f414431322f04da88506004565cc01f0c3130fc5f4e050000000000000a626368706f6f6c172f20626974636f696e636173682e6e6574776f726b202f,
  script_sig: null,
  sequence: 4294967295,
  txid: null,
  txinwitness: null,
  value: 0.0225,
  vout: 2
)
```

