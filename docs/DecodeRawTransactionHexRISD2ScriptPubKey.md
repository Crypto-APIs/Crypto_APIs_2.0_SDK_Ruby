# CryptoApis::DecodeRawTransactionHexRISD2ScriptPubKey

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address** | **String** | Represents the addresses which send the amount. |  |
| **asm** | **String** | Represents the assembly of the script public key of the address. | [optional] |
| **hex** | **String** | Represents the hex of the script public key of the address. | [optional] |
| **type** | **String** | Represents the script type | [optional] |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::DecodeRawTransactionHexRISD2ScriptPubKey.new(
  address: yd5KMREs3GLMe6mTJYr3YrH1juwNwrFCfB,
  asm: OP_DUP OP_HASH160 430158211605af1f0fa26d90405199621bdae5cd OP_EQUALVERIFY OP_CHECKSIG,
  hex: 76a914430158211605af1f0fa26d90405199621bdae5cd88ac,
  type: scripthash
)
```

