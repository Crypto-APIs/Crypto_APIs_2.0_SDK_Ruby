# CryptoApis::DecodeRawTransactionHexRISLVinInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address** | **String** | Represents the addresses which send/receive the amount. | [optional] |
| **input_hash** | **String** | Represents the transaction inputs&#39; indentifier. | [optional] |
| **output_index** | **String** | Defines the output index of a transaction. | [optional] |
| **script_sig** | [**DecodeRawTransactionHexRISLVinInnerScriptSig**](DecodeRawTransactionHexRISLVinInnerScriptSig.md) |  |  |
| **sequence** | **String** | Represents the script sequence number. | [optional] |
| **txinwitness** | **Array&lt;String&gt;** |  | [optional] |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::DecodeRawTransactionHexRISLVinInner.new(
  address: LZ891CJWn54CpE6yJ4T3mzP8Xxwrg9gDpH,
  input_hash: 4c76c153f5de975f94da7526c1b4b4a13380ef93c946f6bed1892f4410600a3d,
  output_index: 3,
  script_sig: null,
  sequence: 4294967294,
  txinwitness: null
)
```

