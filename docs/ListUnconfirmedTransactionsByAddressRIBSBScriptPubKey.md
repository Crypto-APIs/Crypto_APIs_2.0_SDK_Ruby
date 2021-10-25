# CryptoApis::ListUnconfirmedTransactionsByAddressRIBSBScriptPubKey

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

instance = CryptoApis::ListUnconfirmedTransactionsByAddressRIBSBScriptPubKey.new(
  addresses: null,
  asm: OP_DUP OP_HASH160 3502000e8ff5717295df19fbae4597c4f43fb1d9 OP_EQUALVERIFY OP_CHECKSIG,
  hex: 76a9143502000e8ff5717295df19fbae4597c4f43fb1d988ac,
  req_sigs: 1,
  type: witness_v0_keyhash
)
```

