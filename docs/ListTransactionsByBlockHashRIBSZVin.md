# CryptoApis::ListTransactionsByBlockHashRIBSZVin

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **addresses** | **Array&lt;String&gt;** |  |  |
| **coinbase** | **String** | Represents the coinbase hex. |  |
| **script_sig** | [**ListTransactionsByBlockHashRIBSZScriptSig**](ListTransactionsByBlockHashRIBSZScriptSig.md) |  |  |
| **sequence** | **Integer** | Represents the script sequence number. |  |
| **txid** | **String** | Represents the reference transaction identifier. |  |
| **txinwitness** | **Array&lt;String&gt;** |  |  |
| **value** | **String** | Defines the specific amount. |  |
| **vout** | **Integer** | It refers to the index of the output address of this transaction. The index starts from 0. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::ListTransactionsByBlockHashRIBSZVin.new(
  addresses: null,
  coinbase: 02d3080c4e060000000000002f4e614e,
  script_sig: null,
  sequence: 4294967295,
  txid: a2022151256fa5d6d3d282f3c0074456fa247da08bc07df71f8c1d9e76e7d928,
  txinwitness: null,
  value: 0.000144,
  vout: 1
)
```

