# CryptoApis::ListTransactionsByBlockHeightRIBSDVinInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **addresses** | **Array&lt;String&gt;** |  |  |
| **coinbase** | **String** | Represents the coinbase hex. |  |
| **script_sig** | [**ListTransactionsByBlockHeightRIBSDVinInnerScriptSig**](ListTransactionsByBlockHeightRIBSDVinInnerScriptSig.md) |  |  |
| **sequence** | **String** | Represents the script sequence number. |  |
| **txid** | **String** | Represents the reference transaction identifier. | [optional] |
| **txinwitness** | **Array&lt;String&gt;** |  |  |
| **value** | **String** | Represents the sent/received amount. | [optional] |
| **vout** | **Integer** | It refers to the index of the output address of this transaction. The index starts from 0. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::ListTransactionsByBlockHeightRIBSDVinInner.new(
  addresses: null,
  coinbase: Represents the coinbase hex.,
  script_sig: null,
  sequence: null,
  txid: null,
  txinwitness: null,
  value: null,
  vout: 2
)
```

