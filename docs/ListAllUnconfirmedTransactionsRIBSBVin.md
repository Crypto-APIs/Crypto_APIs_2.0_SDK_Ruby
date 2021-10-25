# CryptoApis::ListAllUnconfirmedTransactionsRIBSBVin

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **addresses** | **Array&lt;String&gt;** |  |  |
| **script_sig** | [**ListAllUnconfirmedTransactionsRIBSBScriptSig**](ListAllUnconfirmedTransactionsRIBSBScriptSig.md) |  |  |
| **sequence** | **String** | Represents the script sequence number. |  |
| **txid** | **String** | Represents the reference transaction identifier. | [optional] |
| **txinwitness** | **Array&lt;String&gt;** |  | [optional] |
| **value** | **String** | Represents the sent/received amount. | [optional] |
| **vout** | **Integer** | Defines the vout of the transaction output, i.e. which output to spend. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::ListAllUnconfirmedTransactionsRIBSBVin.new(
  addresses: null,
  script_sig: null,
  sequence: 4294967295,
  txid: aca730af131622fa0d765706e9e5263faee054b03a00b6e9b25f235462fb3043,
  txinwitness: null,
  value: 0.19163773,
  vout: 1
)
```

