# CryptoApis::DecodeRawTransactionHexRISZ

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **expiry_height** | **Integer** | Represents a block height after which the transaction will expire. |  |
| **locktime** | **Integer** | Represents the locktime on the transaction on the specific blockchain, i.e. the blockheight at which the transaction is valid. |  |
| **overwintered** | **Boolean** | \&quot;Overwinter\&quot; is the network upgrade for the Zcash blockchain. |  |
| **saplinged** | **Boolean** | Defines if the transaction includes sapling or not. |  |
| **transaction_hash** | **String** | Represents the same as transactionId for account-based protocols like Ethereum, while it could be different in UTXO-based protocols like Bitcoin. E.g., in UTXO-based protocols hash is different from transactionId for SegWit transactions. |  |
| **value_balance** | **String** | Defines the transaction value balance. |  |
| **version** | **Integer** | Represents the transaction version number. |  |
| **version_group_id** | **String** | Represents the transaction version group ID |  |
| **vin** | [**Array&lt;DecodeRawTransactionHexRISZVin&gt;**](DecodeRawTransactionHexRISZVin.md) | Represents the Inputs of the transaction |  |
| **vout** | [**Array&lt;DecodeRawTransactionHexRISZVout&gt;**](DecodeRawTransactionHexRISZVout.md) | Represents the Inputs of the transaction |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::DecodeRawTransactionHexRISZ.new(
  expiry_height: 0,
  locktime: 1781965,
  overwintered: true,
  saplinged: true,
  transaction_hash: e8ae0fed2699de544f48a9209085a6fe85e4697f3cc5625a85fd5021299e8f82,
  value_balance: 0,
  version: 4,
  version_group_id: 2301567109,
  vin: null,
  vout: null
)
```

