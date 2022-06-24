# CryptoApis::DecodeRawTransactionHexRISDVoutInnerScriptPubKey

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address** | **String** | Represents the addresses which send the amount |  |
| **asm** | **String** | Represents the assembly of the script public key of the address. | [optional] |
| **hex** | **String** | Represents the hex of the script public key of the address. | [optional] |
| **type** | **String** | Represents the hex of the script public key of the address. | [optional] |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::DecodeRawTransactionHexRISDVoutInnerScriptPubKey.new(
  address: yP8A3cbdxRtLRduy5mXDsBnJtMzHWs6ZXr,
  asm: OP_DUP OP_HASH160 4112d3f2cc01db043c0e638bb6338c83a7b9aa8f OP_EQUALVERIFY OP_CHECKSIG,
  hex: 76a9144112d3f2cc01db043c0e638bb6338c83a7b9aa8f88ac,
  type: 76a9144112d3f2cc01db043c0e638bb6338c83a7b9aa8f88ac
)
```

