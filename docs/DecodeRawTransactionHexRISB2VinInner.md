# CryptoApis::DecodeRawTransactionHexRISB2VinInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address** | **String** | Represents the address which send/receive the amount. | [optional] |
| **input_hash** | **String** | Represents the transaction inputs&#39; indentifier. | [optional] |
| **output_index** | **String** | Defines the output index of a transaction. | [optional] |
| **script_sig** | [**DecodeRawTransactionHexRISBVinInnerScriptSig**](DecodeRawTransactionHexRISBVinInnerScriptSig.md) |  |  |
| **sequence** | **String** | Represents the script sequence number. | [optional] |
| **txinwitness** | **Array&lt;String&gt;** |  | [optional] |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::DecodeRawTransactionHexRISB2VinInner.new(
  address: bitcoincash:qq0adqyntn2zl9tsyjfagnyda9j2gfjkk574lxyrxd,
  input_hash: 073c565b56e98cfd53013136e92b9fdcf774409f9dc0daff2cf7afadde3a3f0c,
  output_index: 2,
  script_sig: null,
  sequence: 4294967295,
  txinwitness: null
)
```

