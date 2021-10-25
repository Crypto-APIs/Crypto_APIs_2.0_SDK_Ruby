# CryptoApis::ListUnconfirmedTransactionsByAddressRIBSBScriptSig

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **asm** | **String** | The asm strands for assembly, which is the symbolic representation of the Bitcoin&#39;s Script language op-codes. |  |
| **hex** | **String** | Represents the hex of the public key of the address. | [optional] |
| **type** | **String** | Represents the script type of the reference transaction identifier. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::ListUnconfirmedTransactionsByAddressRIBSBScriptSig.new(
  asm: 304402203862a918653adb03c5dcd82965b2e6c658b5cabdecba315231975873c5a12aa102203101f4d9b4b1cae943c04054b53d2dc8a359776963e9d029fdf0ddba785ab71f[ALL] 027970a92cad2023bc5e83dc4199333a5c6f45a15a141963ac61a3c773940b0115,
  hex: 47304402203862a918653adb03c5dcd82965b2e6c658b5cabdecba315231975873c5a12aa102203101f4d9b4b1cae943c04054b53d2dc8a359776963e9d029fdf0ddba785ab71f0121027970a92cad2023bc5e83dc4199333a5c6f45a15a141963ac61a3c773940b0115,
  type: pubkeyhash
)
```

