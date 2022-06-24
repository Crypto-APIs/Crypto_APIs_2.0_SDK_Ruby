# CryptoApis::DecodeRawTransactionHexRISBVinInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address** | **String** | Represents the address which send/receive the amount. | [optional] |
| **input_hash** | **String** | Represents the transaction inputs&#39; indentifier. | [optional] |
| **output_index** | **Integer** | Represents the output of a transaction. | [optional] |
| **script_sig** | [**DecodeRawTransactionHexRISBVinInnerScriptSig**](DecodeRawTransactionHexRISBVinInnerScriptSig.md) |  |  |
| **sequence** | **String** | Represents the script sequence number. | [optional] |
| **txinwitness** | **Array&lt;String&gt;** |  | [optional] |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::DecodeRawTransactionHexRISBVinInner.new(
  address: 2N5PcdirZUzKF9bWuGdugNuzcQrCbBudxv1,
  input_hash: 108c523cba933520905136262f6cdef87d68a1fa4ffb95b1a73f69a07ed2aed3,
  output_index: 3,
  script_sig: null,
  sequence: 4294967295,
  txinwitness: null
)
```

