# CryptoApis::ListTransactionsByBlockHashRIBSD2VinInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **addresses** | **Array&lt;String&gt;** |  |  |
| **coinbase** | **String** | Represents the coinbase hex. | [optional] |
| **script_sig** | [**ListTransactionsByBlockHashRIBSD2VinInnerScriptSig**](ListTransactionsByBlockHashRIBSD2VinInnerScriptSig.md) |  |  |
| **sequence** | **String** | Represents the script sequence number. |  |
| **txid** | **String** | Represents the reference transaction identifier. | [optional] |
| **txinwitness** | **Array&lt;String&gt;** |  |  |
| **value** | **String** | Represents the sent/received amount. | [optional] |
| **vout** | **Integer** | It refers to the index of the output address of this transaction. The index starts from 0. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::ListTransactionsByBlockHashRIBSD2VinInner.new(
  addresses: null,
  coinbase: 037a3a2f,
  script_sig: null,
  sequence: 4294967295,
  txid: ddeb07a87366077535455148a79fabc160dbe5d455a3b69a70246316d1acf384,
  txinwitness: null,
  value: 10000,
  vout: 2
)
```

