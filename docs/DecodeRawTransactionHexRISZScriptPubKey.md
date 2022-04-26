# CryptoApis::DecodeRawTransactionHexRISZScriptPubKey

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address** | **String** | Represents the address which send the amount. | [optional] |
| **asm** | **String** | Represents the assembly of the script public key of the address. | [optional] |
| **hex** | **String** | Represents the hex of the script public key of the address. | [optional] |
| **type** | **String** | Represents the script type. | [optional] |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::DecodeRawTransactionHexRISZScriptPubKey.new(
  address: t1ajyFP7GnauoDFaM8MqJx9ouQjKS3tbA7g,
  asm: OP_HASH160 ef775f1f997f122a062fff1a2d7443abd1f9c642 OP_EQUAL,
  hex: a914ef775f1f997f122a062fff1a2d7443abd1f9c64287,
  type: pubkeyhash
)
```

