# CryptoApis::DecodeRawTransactionHexRISBVoutInnerScriptPubKey

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address** | **String** | Represents the address which send the amount. |  |
| **asm** | **String** | Represents the assembly of the script public key of the address. | [optional] |
| **hex** | **String** | Represents the hex of the script public key of the address. | [optional] |
| **type** | **String** | Represents the script type. | [optional] |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::DecodeRawTransactionHexRISBVoutInnerScriptPubKey.new(
  address: 2MzakdGTEp8SMWEHKwKM4HYv6uNCBXtHpkV,
  asm: OP_HASH160 507a5bd8cac1d9efdf4c0a4bfacb3e0abb4f8d15 OP_EQUAL,
  hex: a914507a5bd8cac1d9efdf4c0a4bfacb3e0abb4f8d1587,
  type: scripthash
)
```

