# CryptoApis::GetTransactionDetailsByTransactionIDRIBSBCVoutInnerScriptPubKey

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

instance = CryptoApis::GetTransactionDetailsByTransactionIDRIBSBCVoutInnerScriptPubKey.new(
  addresses: null,
  asm: OP_DUP OP_HASH160 386f23363c11a19412b0dbb1b05a5d4d95c7a68a OP_EQUALVERIFY OP_CHECKSIG,
  hex: a914507a5bd8cac1d9efdf4c0a4bfacb3e0abb4f8d1587,
  req_sigs: 1,
  type: pubkeyhash
)
```

