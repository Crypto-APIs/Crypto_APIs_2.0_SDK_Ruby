# CryptoApis::ListTransactionsByBlockHashResponseItemBlockchainSpecificDashScriptPubKey

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

instance = CryptoApis::ListTransactionsByBlockHashResponseItemBlockchainSpecificDashScriptPubKey.new(
  addresses: null,
  asm: OP_DUP OP_HASH160 1442eec4888ec035fd27a82f227e09f548bec812 OP_EQUALVERIFY OP_CHECKSIG,
  hex: 76a9141442eec4888ec035fd27a82f227e09f548bec81288ac,
  req_sigs: 2,
  type: scripthash
)
```

