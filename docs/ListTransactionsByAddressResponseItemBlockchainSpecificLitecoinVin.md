# OpenapiClient::ListTransactionsByAddressResponseItemBlockchainSpecificLitecoinVin

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **addresses** | **Array&lt;String&gt;** |  |  |
| **coinbase** | **String** | Represents the coinbase hex. | [optional] |
| **script_sig** | [**ListTransactionsByAddressResponseItemBlockchainSpecificLitecoinScriptSig**](ListTransactionsByAddressResponseItemBlockchainSpecificLitecoinScriptSig.md) |  |  |
| **sequence** | **String** | Represents the script sequence number. |  |
| **txid** | **String** | Represents the reference transaction identifier. |  |
| **txinwitness** | **Array&lt;String&gt;** |  |  |
| **value** | **String** | Represents the sent/received amount. | [optional] |
| **vout** | **Integer** | Defines the vout of the transaction output, i.e. which output to spend. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ListTransactionsByAddressResponseItemBlockchainSpecificLitecoinVin.new(
  addresses: null,
  coinbase: null,
  script_sig: null,
  sequence: 4294967294,
  txid: 1db56e1e8dfab84f6f0e33f8ddb160c9b16286471a3b486d79ea85bcf4d076b2,
  txinwitness: null,
  value: 0.0225,
  vout: 1
)
```

