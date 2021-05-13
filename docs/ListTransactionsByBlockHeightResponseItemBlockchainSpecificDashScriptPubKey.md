# CryptoApis::ListTransactionsByBlockHeightResponseItemBlockchainSpecificDashScriptPubKey

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

instance = CryptoApis::ListTransactionsByBlockHeightResponseItemBlockchainSpecificDashScriptPubKey.new(
  addresses: null,
  asm: null,
  hex: null,
  req_sigs: 2,
  type: scripthash
)
```

