# CryptoApis::GetTransactionDetailsByTransactionIDRIBSZVoutInnerScriptPubKey

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **addresses** | **Array&lt;String&gt;** |  |  |
| **asm** | **String** | Represents the assembly of the script public key of the address. |  |
| **hex** | **String** | Represents the hex of the script public key of the address. |  |
| **req_sigs** | **Integer** | Represents the required signatures. | [optional] |
| **type** | **String** | Represents the script type. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::GetTransactionDetailsByTransactionIDRIBSZVoutInnerScriptPubKey.new(
  addresses: null,
  asm: OP_HASH160 ef775f1f997f122a062fff1a2d7443abd1f9c642 OP_EQUAL,
  hex: a914ef775f1f997f122a062fff1a2d7443abd1f9c64287,
  req_sigs: 1,
  type: pubkeyhash
)
```

