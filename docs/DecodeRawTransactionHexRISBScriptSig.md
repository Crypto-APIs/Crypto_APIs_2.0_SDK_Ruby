# CryptoApis::DecodeRawTransactionHexRISBScriptSig

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **asm** | **String** | The asm strands for assembly, which is the symbolic representation of the Bitcoin&#39;s Script language op-codes. | [optional] |
| **hex** | **String** | Represents the hex of the public key of the address. | [optional] |
| **type** | **String** | Represents the script type of the reference transaction identifier. | [optional] |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::DecodeRawTransactionHexRISBScriptSig.new(
  asm: 0014daaf6d5cb86befe42df851a4d1df052e663754c1,
  hex: 160014daaf6d5cb86befe42df851a4d1df052e663754c1,
  type: scripthash
)
```

