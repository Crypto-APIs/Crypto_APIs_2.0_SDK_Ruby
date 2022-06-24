# CryptoApis::DeriveHDWalletXPubYPubZPubChangeOrReceivingAddressesRIAddressesInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address** | **String** | Represents the public address, which is a compressed and shortened form of a public key. |  |
| **index** | **Integer** | Represents the output index. It refers to the UTXO sequence in the transaction outputs (vout). |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::DeriveHDWalletXPubYPubZPubChangeOrReceivingAddressesRIAddressesInner.new(
  address: muZxmnQiz8gZgpYmUoTHpD2CFTHWYEjTwB,
  index: 1
)
```

