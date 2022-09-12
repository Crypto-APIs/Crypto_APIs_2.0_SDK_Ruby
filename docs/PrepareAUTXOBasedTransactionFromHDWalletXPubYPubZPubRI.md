# CryptoApis::PrepareAUTXOBasedTransactionFromHDWalletXPubYPubZPubRI

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **additional_data** | **String** | Representation of the additional data | [optional] |
| **fee** | **String** | When isConfirmed is True - Defines the amount of the transaction fee When isConfirmed is False - For ETH-based blockchains this attribute represents the max fee value. |  |
| **fee_per_byte** | **String** | Defines the fee per byte value | [optional] |
| **locktime** | **Integer** | Represents the time at which a particular transaction can be added to the blockchain. |  |
| **replaceable** | **Boolean** | Representation of whether the transaction is replaceable |  |
| **size** | **Integer** | Represents the total size of this transaction. |  |
| **vin** | [**Array&lt;PrepareAUTXOBasedTransactionFromHDWalletXPubYPubZPubRIVinInner&gt;**](PrepareAUTXOBasedTransactionFromHDWalletXPubYPubZPubRIVinInner.md) | Represents the transaction inputs. |  |
| **vout** | [**Array&lt;PrepareAUTXOBasedTransactionFromHDWalletXPubYPubZPubRIVoutInner&gt;**](PrepareAUTXOBasedTransactionFromHDWalletXPubYPubZPubRIVoutInner.md) | Represents the transaction outputs. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::PrepareAUTXOBasedTransactionFromHDWalletXPubYPubZPubRI.new(
  additional_data: yourAdditionalDataHere,
  fee: 0.0000279,
  fee_per_byte: 0.00000014,
  locktime: 1781965,
  replaceable: false,
  size: 243,
  vin: null,
  vout: null
)
```

