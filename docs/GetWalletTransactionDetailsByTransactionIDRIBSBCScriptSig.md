# CryptoApis::GetWalletTransactionDetailsByTransactionIDRIBSBCScriptSig

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **asm** | **String** | The asm strands for assembly, which is the symbolic representation of the Bitcoin&#39;s Script language op-codes. |  |
| **hex** | **String** | Represents the hex of the public key of the address. |  |
| **type** | **String** | Represents the script type of the reference transaction identifier. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::GetWalletTransactionDetailsByTransactionIDRIBSBCScriptSig.new(
  asm: 0014daaf6d5cb86befe42df851a4d1df052e663754c1,
  hex: 160014daaf6d5cb86befe42df851a4d1df052e663754c1,
  type: scripthash
)
```

