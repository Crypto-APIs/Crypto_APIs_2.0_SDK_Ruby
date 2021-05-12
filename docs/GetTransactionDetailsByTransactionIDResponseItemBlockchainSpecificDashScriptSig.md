# OpenapiClient::GetTransactionDetailsByTransactionIDResponseItemBlockchainSpecificDashScriptSig

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **asm** | **String** | The asm strands for assembly, which is the symbolic representation of the Bitcoin&#39;s Script language op-codes. |  |
| **hex** | **String** | Represents the hex of the public key of the address. |  |
| **type** | **String** | Represents the script type of the reference transaction identifier. |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::GetTransactionDetailsByTransactionIDResponseItemBlockchainSpecificDashScriptSig.new(
  asm: OP_DUP OP_HASH160 1fd680935cd42f95702493d44c8de964a42656b5 OP_EQUALVERIFY OP_CHECKSIG,
  hex: 4197968cb34bfba488b4a2399f7959b823fefad79ca0b5ed3f3a4bec4c0286cab55b896b28bbbcd4e61cf584cecfd47063b18b481d8d680eafbf869ada1a02c52441210237a84e6d70e775f274e4cbd9f30f9f8b1a426e8b08a9f802a851ce501c930011,
  type: scripthash
)
```

