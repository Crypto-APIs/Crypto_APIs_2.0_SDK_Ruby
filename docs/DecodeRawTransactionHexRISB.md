# CryptoApis::DecodeRawTransactionHexRISB

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **locktime** | **Integer** | Represents the time at which a particular transaction can be added to the blockchain. |  |
| **transaction_hash** | **String** | Represents the same as transactionId for account-based protocols like Ethereum, while it could be different in UTXO-based protocols like Bitcoin. E.g., in UTXO-based protocols hash is different from transactionId for SegWit transactions. |  |
| **v_size** | **Integer** | Represents the virtual size of this transaction. |  |
| **version** | **Integer** | Represents the transaction version number. |  |
| **vin** | [**Array&lt;DecodeRawTransactionHexRISBVin&gt;**](DecodeRawTransactionHexRISBVin.md) | Represents the transaction inputs. |  |
| **vout** | [**Array&lt;DecodeRawTransactionHexRISBVout&gt;**](DecodeRawTransactionHexRISBVout.md) | Represents the transaction outputs. |  |
| **weight** | **Integer** | Represents the size of Bitcoin block, measured in weight units and including the segwit discount. | [optional] |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::DecodeRawTransactionHexRISB.new(
  locktime: 1781965,
  transaction_hash: 1ec73b0f61359927d02376b35993b756b1097cb9a857bec23da4c98c4977d2b2,
  v_size: 166,
  version: 1,
  vin: null,
  vout: null,
  weight: 236
)
```

