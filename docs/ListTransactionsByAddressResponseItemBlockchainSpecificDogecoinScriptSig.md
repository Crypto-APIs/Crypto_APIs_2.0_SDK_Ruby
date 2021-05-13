# CryptoApis::ListTransactionsByAddressResponseItemBlockchainSpecificDogecoinScriptSig

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **asm** | **String** | The asm strands for assembly, which is the symbolic representation of the Bitcoin&#39;s Script language op-codes. |  |
| **hex** | **String** | Represents the hex of the public key of the address. |  |
| **type** | **String** | Represents the script type of the reference transaction identifier. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::ListTransactionsByAddressResponseItemBlockchainSpecificDogecoinScriptSig.new(
  asm: 030483ff6271580681f4f7828c01df56d5aebfe982cbaa2922594be9eb6cf40206 OP_CHECKSIG,
  hex: 21030483ff6271580681f4f7828c01df56d5aebfe982cbaa2922594be9eb6cf40206ac,
  type: pubkey
)
```

