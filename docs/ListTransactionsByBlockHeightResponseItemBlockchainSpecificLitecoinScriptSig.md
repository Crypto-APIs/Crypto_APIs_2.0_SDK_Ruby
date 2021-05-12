# OpenapiClient::ListTransactionsByBlockHeightResponseItemBlockchainSpecificLitecoinScriptSig

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **asm** | **String** | The asm strands for assembly, which is the symbolic representation of the Bitcoin&#39;s Script language op-codes. |  |
| **hex** | **String** | Represents the hex of the public key of the address. |  |
| **type** | **String** | Represents the script type of the reference transaction identifier. |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ListTransactionsByBlockHeightResponseItemBlockchainSpecificLitecoinScriptSig.new(
  asm: e052170e6a8ca2a891158c2f3a268521ae16bd1927d3cb941d54ff194986263dda8582fbc3d1a38155e366d7bea9e58501e84daf6d84f0ccb99380af36477c4f[ALL|FORKID] 027774729b977f98bb119fb1cf6fb17cc6b2d78af7acbeb6ad2b49187e8894efba,
  hex: 41e052170e6a8ca2a891158c2f3a268521ae16bd1927d3cb941d54ff194986263dda8582fbc3d1a38155e366d7bea9e58501e84daf6d84f0ccb99380af36477c4f4121027774729b977f98bb119fb1cf6fb17cc6b2d78af7acbeb6ad2b49187e8894efba,
  type: scripthash
)
```

