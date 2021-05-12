# OpenapiClient::ListTransactionsByAddressResponseItemBlockchainSpecificLitecoinScriptSig

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **asm** | **String** | The asm strands for assembly, which is the symbolic representation of the Bitcoin&#39;s Script language op-codes. |  |
| **hex** | **String** | Represents the hex of the public key of the address. |  |
| **type** | **String** | Represents the script type of the reference transaction identifier. |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ListTransactionsByAddressResponseItemBlockchainSpecificLitecoinScriptSig.new(
  asm: 0 eab6ff0ee1158241737dfa5c78449dc06cf021cc,
  hex: 0014eab6ff0ee1158241737dfa5c78449dc06cf021cc,
  type: scripthash
)
```

