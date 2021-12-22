# CryptoApis::GetTransactionDetailsByTransactionIDFromCallbackRIBSBScriptSig

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **asm** | **String** | The asm strands for assembly, which is the symbolic representation of the Bitcoin&#39;s Script language op-codes. |  |
| **hex** | **String** | Represents the hex of the public key of the address. |  |
| **type** | **String** | Represents the script type of the reference transaction identifier. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::GetTransactionDetailsByTransactionIDFromCallbackRIBSBScriptSig.new(
  asm: 304402202eb16569b2c1f5898c1ab5b23d41e0783ae37943bc6745784fb810f955deafbd02203562872c3a3c7c2423a752f27ba6ae01e66ffc56fe8e463a90498dd5659f8d90,
  hex: 47304402202eb16569b2c1f5898c1ab5b23d41e0783ae37943bc6745784fb810f955deafbd02203562872c3a3c7c2423a752f27ba6ae01e66ffc56fe8e463a90498dd5659f8d90012102275753690ab58df3c923001e94d407e30b03e60b1f2461729a1dd4f37ebe2469,
  type: pubkeyhash
)
```

