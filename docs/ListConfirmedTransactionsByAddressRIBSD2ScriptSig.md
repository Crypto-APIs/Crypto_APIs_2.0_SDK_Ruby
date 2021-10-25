# CryptoApis::ListConfirmedTransactionsByAddressRIBSD2ScriptSig

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **asm** | **String** | The asm strands for assembly, which is the symbolic representation of the Bitcoin&#39;s Script language op-codes. |  |
| **hex** | **String** | Represents the hex of the public key of the address. |  |
| **type** | **String** | Represents the script type of the reference transaction identifier. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::ListConfirmedTransactionsByAddressRIBSD2ScriptSig.new(
  asm: OP_DUP OP_HASH160 1ec5c66e9789c655ae068d35088b4073345fe0b0 OP_EQUALVERIFY OP_CHECKSIG,
  hex: 76a9141ec5c66e9789c655ae068d35088b4073345fe0b088ac,
  type: scripthash
)
```

