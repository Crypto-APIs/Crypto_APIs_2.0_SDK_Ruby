# CryptoApis::ListConfirmedTransactionsByAddressAndTimeRangeRI

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **index** | **Integer** | Represents the index position of the transaction in the block. |  |
| **mined_in_block_hash** | **String** | Represents the hash of the block where this transaction was mined/confirmed for first time. The hash is defined as a cryptographic digital fingerprint made by hashing the block header twice through the SHA256 algorithm. | [optional] |
| **mined_in_block_height** | **Integer** | Represents the hight of the block where this transaction was mined/confirmed for first time. The height is defined as the number of blocks in the blockchain preceding this specific block. | [optional] |
| **recipients** | [**Array&lt;GetTransactionDetailsByTransactionIDRIRecipientsInner&gt;**](GetTransactionDetailsByTransactionIDRIRecipientsInner.md) | Represents a list of recipient addresses with the respective amounts. In account-based protocols like Ethereum there is only one address in this list. |  |
| **senders** | [**Array&lt;GetTransactionDetailsByTransactionIDRISendersInner&gt;**](GetTransactionDetailsByTransactionIDRISendersInner.md) | Represents a list of sender addresses with the respective amounts. In account-based protocols like Ethereum there is only one address in this list. |  |
| **timestamp** | **Integer** | Defines the exact date/time in Unix Timestamp when this transaction was mined, confirmed or first seen in Mempool, if it is unconfirmed. |  |
| **transaction_hash** | **String** | Represents the same as &#x60;transactionId&#x60; for account-based protocols like Ethereum, while it could be different in UTXO-based protocols like Bitcoin. E.g., in UTXO-based protocols &#x60;hash&#x60; is different from &#x60;transactionId&#x60; for SegWit transactions. |  |
| **transaction_id** | **String** | Represents the unique identifier of a transaction, i.e. it could be &#x60;transactionId&#x60; in UTXO-based protocols like Bitcoin, and transaction &#x60;hash&#x60; in Ethereum blockchain. |  |
| **fee** | [**ListConfirmedTransactionsByAddressRIFee**](ListConfirmedTransactionsByAddressRIFee.md) |  |  |
| **blockchain_specific** | [**ListConfirmedTransactionsByAddressAndTimeRangeRIBS**](ListConfirmedTransactionsByAddressAndTimeRangeRIBS.md) |  |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::ListConfirmedTransactionsByAddressAndTimeRangeRI.new(
  index: 1,
  mined_in_block_hash: 00000000407f119ecb74b44229228910400aaeb9f4e3b9869955b85a53e9b7db,
  mined_in_block_height: 1903849,
  recipients: null,
  senders: null,
  timestamp: 1582202940,
  transaction_hash: 1ec73b0f61359927d02376b35993b756b1097cb9a857bec23da4c98c4977d2b2,
  transaction_id: 4b66461bf88b61e1e4326356534c135129defb504c7acb2fd6c92697d79eb250,
  fee: null,
  blockchain_specific: null
)
```

