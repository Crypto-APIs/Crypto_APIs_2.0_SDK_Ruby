# CryptoApis::GetWalletTransactionDetailsByTransactionIDRI

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **index** | **Integer** | Represents the index position of the transaction in the specific block. |  |
| **is_confirmed** | **Boolean** | Represents the state of the transaction whether it is confirmed or not confirmed. |  |
| **mined_in_block_hash** | **String** | Represents the hash of the block where this transaction was mined/confirmed for first time. The hash is defined as a cryptographic digital fingerprint made by hashing the block header twice through the SHA256 algorithm. | [optional] |
| **mined_in_block_height** | **Integer** | Represents the hight of the block where this transaction was mined/confirmed for first time. The height is defined as the number of blocks in the blockchain preceding this specific block. | [optional] |
| **recipients** | **String** | String representation of the transaction to address |  |
| **senders** | **String** | String representation of the transaction from address |  |
| **timestamp** | **Integer** | Defines the exact date/time in Unix Timestamp when this transaction was mined, confirmed or first seen in Mempool, if it is unconfirmed. |  |
| **transaction_hash** | **String** | Represents the same as &#x60;transactionId&#x60; for account-based protocols like Ethereum, while it could be different in UTXO-based protocols like Bitcoin. E.g., in UTXO-based protocols &#x60;hash&#x60; is different from &#x60;transactionId&#x60; for SegWit transactions. |  |
| **transaction_id** | **String** | Represents the unique identifier of a transaction, i.e. it could be &#x60;transactionId&#x60; in UTXO-based protocols like Bitcoin, and transaction &#x60;hash&#x60; in Ethereum blockchain. |  |
| **fee** | [**GetWalletTransactionDetailsByTransactionIDRIFee**](GetWalletTransactionDetailsByTransactionIDRIFee.md) |  |  |
| **blockchain_specific** | [**GetWalletTransactionDetailsByTransactionIDRIBS**](GetWalletTransactionDetailsByTransactionIDRIBS.md) |  |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::GetWalletTransactionDetailsByTransactionIDRI.new(
  index: 21,
  is_confirmed: true,
  mined_in_block_hash: 0000000000503b5200a935cfa9e7740783b5f2292aaad3bf273554abfb3d91ce,
  mined_in_block_height: 1250283,
  recipients: null,
  senders: null,
  timestamp: 1636972451,
  transaction_hash: c58148bb37b9be020338e427784580b58e0b497ce32d7eddf812de6a1a0d3133,
  transaction_id: 3e081861494aed897e589cdeab5d9e628d985e571ed1c19896d1aa698cce9d80,
  fee: null,
  blockchain_specific: null
)
```

