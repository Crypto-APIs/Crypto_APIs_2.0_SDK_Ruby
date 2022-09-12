# CryptoApis::PrepareAUTXOBasedTransactionFromHDWalletXPubYPubZPubRIVinInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address** | **String** | Representation of the address |  |
| **change** | **Integer** | Representation of the change value | [optional] |
| **derivation_index** | **Integer** | Representation of the derivation index of the xpub address. | [optional] |
| **output_index** | **Integer** | Representation of the output index |  |
| **satoshis** | **Integer** | Representation of the satoshis value |  |
| **script** | **String** | Representation of the script string |  |
| **sighash** | **String** | Representation of the hash that should be signed. |  |
| **transaction_id** | **String** | Represents the reference transaction identifier. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::PrepareAUTXOBasedTransactionFromHDWalletXPubYPubZPubRIVinInner.new(
  address: tb1q8wus03xdv3t6aknmsnpd0jmeu7dgh93j34pj5a,
  change: 0,
  derivation_index: 1,
  output_index: 1,
  satoshis: 10000,
  script: 00143bb907c4cd6457aeda7b84c2d7cb79e79a8b9632,
  sighash: 90cfeef03b2755586b8e81668d8009b16b34d48abf2968729892279222e8d893,
  transaction_id: ff59ac56616ece7498e62c7f9f957cfdd50f6f2a74402058154e3022e7617bf2
)
```

