# CryptoApis::ListTransactionsByBlockHashRIBSZVinInnerScriptSig

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **asm** | **String** | The asm strands for assembly, which is the symbolic representation of the Bitcoin&#39;s Script language op-codes. |  |
| **hex** | **String** | Represents the hex of the public key of the address. |  |
| **type** | **String** | Represents the script type of the reference transaction identifier. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::ListTransactionsByBlockHashRIBSZVinInnerScriptSig.new(
  asm: OP_DUP OP_HASH160 4c275e3800739237500ed7c5ee428b9f05909a2e OP_EQUALVERIFY OP_CHECKSIG,
  hex: 76a9144c275e3800739237500ed7c5ee428b9f05909a2e88ac,
  type: pubkeyhash
)
```

