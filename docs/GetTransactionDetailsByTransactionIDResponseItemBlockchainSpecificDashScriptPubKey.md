# CryptoApis::GetTransactionDetailsByTransactionIDResponseItemBlockchainSpecificDashScriptPubKey

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

instance = CryptoApis::GetTransactionDetailsByTransactionIDResponseItemBlockchainSpecificDashScriptPubKey.new(
  addresses: null,
  asm: OP_DUP OP_HASH160 4112d3f2cc01db043c0e638bb6338c83a7b9aa8f OP_EQUALVERIFY OP_CHECKSIG,
  hex: 76a9144112d3f2cc01db043c0e638bb6338c83a7b9aa8f88ac,
  req_sigs: 1,
  type: scripthash
)
```

