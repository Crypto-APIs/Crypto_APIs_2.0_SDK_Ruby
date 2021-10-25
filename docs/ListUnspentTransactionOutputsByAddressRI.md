# CryptoApis::ListUnspentTransactionOutputsByAddressRI

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **index** | **Integer** | Represents the index position of the transaction in the block. |  |
| **locktime** | **Integer** | Represents the time at which a particular transaction can be added to the blockchain |  |
| **mined_in_block_hash** | **String** | Represents the hash of the block where this transaction was mined/confirmed for first time. The hash is defined as a cryptographic digital fingerprint made by hashing the block header twice through the SHA256 algorithm. |  |
| **mined_in_block_height** | **Integer** | Represents the hight of the block where this transaction was mined/confirmed for first time. The height is defined as the number of blocks in the blockchain preceding this specific block. |  |
| **recipients** | [**Array&lt;GetTransactionDetailsByTransactionIDRIRecipients&gt;**](GetTransactionDetailsByTransactionIDRIRecipients.md) | Represents a list of recipient addresses with the respective amounts. In account-based protocols like Ethereum there is only one address in this list. |  |
| **senders** | [**Array&lt;ListUnspentTransactionOutputsByAddressRISenders&gt;**](ListUnspentTransactionOutputsByAddressRISenders.md) | Object Array representation of transaction senders |  |
| **size** | **Integer** | Represents the total size of this transaction |  |
| **timestamp** | **Integer** | Defines the exact date/time in Unix Timestamp when this transaction was mined, confirmed or first seen in Mempool, if it is unconfirmed. |  |
| **transaction_hash** | **String** | Represents the same as &#x60;transactionId&#x60; for account-based protocols like Ethereum, while it could be different in UTXO-based protocols like Bitcoin. E.g., in UTXO-based protocols &#x60;hash&#x60; is different from &#x60;transactionId&#x60; for SegWit transactions. |  |
| **transaction_id** | **String** | Represents the unique identifier of a transaction, i.e. it could be &#x60;transactionId&#x60; in UTXO-based protocols like Bitcoin, and transaction &#x60;hash&#x60; in Ethereum blockchain. |  |
| **version** | **Integer** | Represents the transaction version number. |  |
| **vin** | [**Array&lt;ListUnspentTransactionOutputsByAddressRIVin&gt;**](ListUnspentTransactionOutputsByAddressRIVin.md) | Represents the transaction inputs. |  |
| **vout** | [**Array&lt;ListConfirmedTransactionsByAddressRIBSBVout&gt;**](ListConfirmedTransactionsByAddressRIBSBVout.md) | Represents the transaction outputs. |  |
| **fee** | [**ListUnspentTransactionOutputsByAddressRIFee**](ListUnspentTransactionOutputsByAddressRIFee.md) |  |  |
| **blockchain_specific** | [**ListUnspentTransactionOutputsByAddressRIBlockchainSpecific**](ListUnspentTransactionOutputsByAddressRIBlockchainSpecific.md) |  |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::ListUnspentTransactionOutputsByAddressRI.new(
  index: 1,
  locktime: 1781965,
  mined_in_block_hash: 00000000407f119ecb74b44229228910400aaeb9f4e3b9869955b85a53e9b7db,
  mined_in_block_height: 1903849,
  recipients: null,
  senders: null,
  size: 248,
  timestamp: 1582202940,
  transaction_hash: d52da8685adf02b11b72ca8dcf26b38b257bb04a1666cb7195400a3cfc87ae17,
  transaction_id: 4b66461bf88b61e1e4326356534c135129defb504c7acb2fd6c92697d79eb250,
  version: 1,
  vin: null,
  vout: null,
  fee: null,
  blockchain_specific: null
)
```

