# OpenapiClient::ListTransactionsByAddressResponseItemBlockchainSpecificDashScriptPubKey

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
require 'openapi_client'

instance = OpenapiClient::ListTransactionsByAddressResponseItemBlockchainSpecificDashScriptPubKey.new(
  addresses: null,
  asm: OP_DUP OP_HASH160 1ec5c66e9789c655ae068d35088b4073345fe0b0 OP_EQUALVERIFY OP_CHECKSIG,
  hex: 76a9141ec5c66e9789c655ae068d35088b4073345fe0b088ac,
  req_sigs: 1,
  type: scripthash
)
```

