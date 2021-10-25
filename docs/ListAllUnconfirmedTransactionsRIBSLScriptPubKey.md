# CryptoApis::ListAllUnconfirmedTransactionsRIBSLScriptPubKey

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **addresses** | **Array&lt;String&gt;** |  |  |
| **asm** | **String** | Represents the assembly of the script public key of the address. |  |
| **hex** | **String** | Represents the hex of the script public key of the address. |  |
| **req_sigs** | **String** | Represents the required signatures. |  |
| **type** | **String** | Represents the script type. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::ListAllUnconfirmedTransactionsRIBSLScriptPubKey.new(
  addresses: null,
  asm: OP_HASH160 ca94af32587de4e5006685ffffc65a818ccd3fbc OP_EQUAL,
  hex: a914ca94af32587de4e5006685ffffc65a818ccd3fbc87,
  req_sigs: 1,
  type: scripthash
)
```

