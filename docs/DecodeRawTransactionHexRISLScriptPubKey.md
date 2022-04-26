# CryptoApis::DecodeRawTransactionHexRISLScriptPubKey

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address** | **String** | Represents the addresses which send the amount. |  |
| **asm** | **String** | Represents the assembly of the script public key of the address. | [optional] |
| **hex** | **String** | Represents the hex of the script public key of the address. | [optional] |
| **type** | **String** | Represents the script type. | [optional] |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::DecodeRawTransactionHexRISLScriptPubKey.new(
  address: 3LAAY4fp88RsNHkVW5DZJgqUdbMD5rVoqZ,
  asm: OP_HASH160 ca94af32587de4e5006685ffffc65a818ccd3fbc OP_EQUAL,
  hex: a914ca94af32587de4e5006685ffffc65a818ccd3fbc87,
  type: scripthash
)
```

