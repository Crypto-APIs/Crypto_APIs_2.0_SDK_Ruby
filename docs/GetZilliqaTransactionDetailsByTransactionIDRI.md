# CryptoApis::GetZilliqaTransactionDetailsByTransactionIDRI

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **fee** | [**GetZilliqaTransactionDetailsByTransactionIDRIFee**](GetZilliqaTransactionDetailsByTransactionIDRIFee.md) |  |  |
| **gas_limit** | **Integer** | Represents the maximum amount of gas allowed in the block in order to determine how many transactions it can fit. |  |
| **gas_price** | **Integer** | Defines the price of the gas. |  |
| **gas_used** | **Integer** | Defines how much of the gas for the block has been used. |  |
| **mined_in_block_hash** | **String** | Represents the hash of the block, which is its unique identifier. It represents a cryptographic digital fingerprint made by hashing the block header twice through the SHA256 algorithm. |  |
| **mined_in_block_height** | **Integer** | Represents the number of blocks in the blockchain preceding this specific block. Block numbers have no gaps. A blockchain usually starts with block 0 called the \&quot;Genesis block\&quot;. |  |
| **nonce** | **Integer** | Represents the sequential running number for an address, starting from 0 for the first transaction. E.g., if the nonce of a transaction is 10, it would be the 11th transaction sent from the sender&#39;s address. |  |
| **recipients** | [**Array&lt;GetZilliqaTransactionDetailsByTransactionIDRIRecipients&gt;**](GetZilliqaTransactionDetailsByTransactionIDRIRecipients.md) | Represents an object of addresses that receive the transactions. |  |
| **senders** | [**Array&lt;GetZilliqaTransactionDetailsByTransactionIDRISenders&gt;**](GetZilliqaTransactionDetailsByTransactionIDRISenders.md) | Represents an object of addresses that provide the funds. |  |
| **timestamp** | **Integer** | Defines the exact date/time when this block was mined in Unix Timestamp. |  |
| **transaction_index** | **Integer** | Defines the numeric representation of the transaction index. |  |
| **transaction_status** | **String** | Defines the status of the transaction, whether it is e.g. pending or complete. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::GetZilliqaTransactionDetailsByTransactionIDRI.new(
  fee: null,
  gas_limit: 552020,
  gas_price: 2994782927,
  gas_used: 24673,
  mined_in_block_hash: 0x5ba627aed1ff0f5480694e994ee03a6ec7b5a6fa96be899c84d52725f9830891,
  mined_in_block_height: 1250207,
  nonce: 13,
  recipients: null,
  senders: null,
  timestamp: 1582202940,
  transaction_index: 0,
  transaction_status: 0
)
```

