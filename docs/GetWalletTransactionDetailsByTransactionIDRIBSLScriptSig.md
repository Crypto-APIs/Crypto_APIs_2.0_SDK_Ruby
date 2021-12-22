# CryptoApis::GetWalletTransactionDetailsByTransactionIDRIBSLScriptSig

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **asm** | **String** | The asm strands for assembly, which is the symbolic representation of the Bitcoin&#39;s Script language op-codes. |  |
| **hex** | **String** | Represents the hex of the public key of the address. |  |
| **type** | **String** | Represents the script type of the reference transaction identifier. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::GetWalletTransactionDetailsByTransactionIDRIBSLScriptSig.new(
  asm: 3045022100f031442894c0fd60c195fbdb29c0bf72f143a815689b8840cd31ec31cc6a7721022028f74f0869e4666761c9ba1035cc714528a17de873dfc7b3a541d29f3942a2d8[ALL] 028c533b6c0ce0ad714a8af36b64d207c4f61cd6d5af210362447c92b4105a4fab,
  hex: 483045022100f031442894c0fd60c195fbdb29c0bf72f143a815689b8840cd31ec31cc6a7721022028f74f0869e4666761c9ba1035cc714528a17de873dfc7b3a541d29f3942a2d80121028c533b6c0ce0ad714a8af36b64d207c4f61cd6d5af210362447c92b4105a4fab,
  type: scripthash
)
```

