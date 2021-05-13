# CryptoApis::ListTransactionsByBlockHashResponseItemBlockchainSpecificDogecoinScriptPubKey

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

instance = CryptoApis::ListTransactionsByBlockHashResponseItemBlockchainSpecificDogecoinScriptPubKey.new(
  addresses: null,
  asm: OP_DUP OP_HASH160 430158211605af1f0fa26d90405199621bdae5cd OP_EQUALVERIFY OP_CHECKSIG,
  hex: 76a914430158211605af1f0fa26d90405199621bdae5cd88ac,
  req_sigs: 2,
  type: scripthash
)
```

