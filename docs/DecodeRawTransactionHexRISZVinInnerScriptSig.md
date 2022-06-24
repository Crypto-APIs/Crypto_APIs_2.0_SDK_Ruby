# CryptoApis::DecodeRawTransactionHexRISZVinInnerScriptSig

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **asm** | **String** | The asm strands for assembly, which is the symbolic representation of the Bitcoin&#39;s Script language op-codes. | [optional] |
| **hex** | **String** | Represents the hex of the public key of the address. | [optional] |
| **type** | **String** | Represents the script type of the reference transaction identifier. | [optional] |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::DecodeRawTransactionHexRISZVinInnerScriptSig.new(
  asm: OP_HASH160 ef775f1f997f122a062fff1a2d7443abd1f9c642 OP_EQUAL,
  hex: a914ef775f1f997f122a062fff1a2d7443abd1f9c64287,
  type: pubkeyhash
)
```

