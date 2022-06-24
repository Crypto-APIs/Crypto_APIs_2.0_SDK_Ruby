# CryptoApis::DecodeRawTransactionHexRISD

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **locktime** | **Integer** | Represents the time at which a particular transaction can be added to the blockchain. |  |
| **transaction_hash** | **String** | Represents the same as transactionId for account-based protocols like Ethereum, while it could be different in UTXO-based protocols like Bitcoin. E.g., in UTXO-based protocols hash is different from transactionId for SegWit transactions. |  |
| **v_size** | **Integer** | Represents the virtual size of this transaction. |  |
| **version** | **Integer** | Represents transaction version number. |  |
| **vin** | [**Array&lt;DecodeRawTransactionHexRISDVinInner&gt;**](DecodeRawTransactionHexRISDVinInner.md) | Represents the transaction inputs. |  |
| **vout** | [**Array&lt;DecodeRawTransactionHexRISDVoutInner&gt;**](DecodeRawTransactionHexRISDVoutInner.md) | Represents the transaction outputs. |  |
| **weight** | **Integer** | Represents the size of a block, measured in weight units and including the segwit discount. | [optional] |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::DecodeRawTransactionHexRISD.new(
  locktime: 0,
  transaction_hash: 1b2a8bd59c0d776015cfe6fd6b5b4f936ffcf8adf7a56a1eed460e915ce82ea7,
  v_size: 141,
  version: 1,
  vin: null,
  vout: null,
  weight: 256
)
```

