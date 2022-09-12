# CryptoApis::ListTransactionsByBlockHashRIBSBVoutInnerScriptPubKey

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

instance = CryptoApis::ListTransactionsByBlockHashRIBSBVoutInnerScriptPubKey.new(
  addresses: null,
  asm: OP_HASH160 507a5bd8cac1d9efdf4c0a4bfacb3e0abb4f8d15 OP_EQUAL,
  hex: a914507a5bd8cac1d9efdf4c0a4bfacb3e0abb4f8d1587,
  req_sigs: 1,
  type: scripthash
)
```

