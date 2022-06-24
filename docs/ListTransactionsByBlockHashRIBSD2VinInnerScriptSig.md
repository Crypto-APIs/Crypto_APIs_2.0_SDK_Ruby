# CryptoApis::ListTransactionsByBlockHashRIBSD2VinInnerScriptSig

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **asm** | **String** | The asm strands for assembly, which is the symbolic representation of the Bitcoin&#39;s Script language op-codes. |  |
| **hex** | **String** | Represents the hex of the public key of the address. |  |
| **type** | **String** | Represents the script type of the reference transaction identifier. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::ListTransactionsByBlockHashRIBSD2VinInnerScriptSig.new(
  asm: OP_DUP OP_HASH160 1fd680935cd42f95702493d44c8de964a42656b5 OP_EQUALVERIFY OP_CHECKSIG,
  hex: 76a9141442eec4888ec035fd27a82f227e09f548bec81288ac,
  type: scripthash
)
```

