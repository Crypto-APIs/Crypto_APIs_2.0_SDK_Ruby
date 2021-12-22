# CryptoApis::GetWalletTransactionDetailsByTransactionIDRIBSBScriptPubKey

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **addresses** | **Array&lt;String&gt;** |  |  |
| **asm** | **String** | Represents the assembly of the script public key of the address. |  |
| **hex** | **String** | Represents the hex of the script public key of the address. |  |
| **req_sigs** | **Integer** | Represents the required signatures. |  |
| **type** | **String** | Represents the script type. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::GetWalletTransactionDetailsByTransactionIDRIBSBScriptPubKey.new(
  addresses: null,
  asm: OP_HASH160 fcae5de86db6ca7121f44a0a01fd2d3b85137e07 OP_EQUA,
  hex: a914fcae5de86db6ca7121f44a0a01fd2d3b85137e0787,
  req_sigs: 1,
  type: witness_v0_keyhash
)
```

