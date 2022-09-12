# CryptoApis::DeriveAndSyncNewChangeAddressesRI

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address** | **String** | Represents the public address, which is a compressed and shortened form of a public key. |  |
| **address_format** | **String** | Represents the format of the address. |  |
| **address_type** | **String** | Defines the address type. |  |
| **derivation_type** | **String** | Represents the derivation type. |  |
| **index** | **String** | Represents the output index. It refers to the UTXO sequence in the transaction outputs (vout). |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::DeriveAndSyncNewChangeAddressesRI.new(
  address: tb1q2sy5l2vn4p648g3ttjxegghp6w9nycvdxap4ef,
  address_format: P2WPKH,
  address_type: change,
  derivation_type: bip32,
  index: 1
)
```

