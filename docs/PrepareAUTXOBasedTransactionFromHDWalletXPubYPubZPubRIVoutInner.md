# CryptoApis::PrepareAUTXOBasedTransactionFromHDWalletXPubYPubZPubRIVoutInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address** | **String** | Representation of the address |  |
| **satoshis** | **Integer** | Representation of the satoshis value |  |
| **script** | **String** | Representation of the script |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::PrepareAUTXOBasedTransactionFromHDWalletXPubYPubZPubRIVoutInner.new(
  address: tb1qvx3fynjuctk475vgecetfck005fxh699mflshv,
  satoshis: 3094,
  script: 0014a3f1019940ce572681c43fd836db97036a85bc8f
)
```

