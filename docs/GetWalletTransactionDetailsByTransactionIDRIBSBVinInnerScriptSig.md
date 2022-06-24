# CryptoApis::GetWalletTransactionDetailsByTransactionIDRIBSBVinInnerScriptSig

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **asm** | **String** | The asm strands for assembly, which is the symbolic representation of the Bitcoin&#39;s Script language op-codes. |  |
| **hex** | **String** | Represents the hex of the public key of the address. |  |
| **type** | **String** | Represents the script type of the reference transaction identifier. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::GetWalletTransactionDetailsByTransactionIDRIBSBVinInnerScriptSig.new(
  asm: 00148b3ed2c15710b61a43cb354a7e637dc6bbd448ce,
  hex: 1600148b3ed2c15710b61a43cb354a7e637dc6bbd448ce,
  type: scripthash
)
```

