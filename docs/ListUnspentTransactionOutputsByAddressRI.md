# CryptoApis::ListUnspentTransactionOutputsByAddressRI

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address** | **String** | Represents the address that has unspend funds per which the result is returned. |  |
| **amount** | **String** | Represents the sent/received amount. |  |
| **index** | **Integer** | Represents the index position of the transaction in the block. |  |
| **is_confirmed** | **Boolean** | Represents the state of the transaction whether it is confirmed or not confirmed. |  |
| **timestamp** | **Integer** | Defines the exact date/time in Unix Timestamp when this transaction was mined, confirmed or first seen in Mempool, if it is unconfirmed. |  |
| **transaction_id** | **String** | Represents the unique identifier of a transaction, i.e. it could be &#x60;transactionId&#x60; in UTXO-based protocols like Bitcoin, and transaction &#x60;hash&#x60; in Ethereum blockchain. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::ListUnspentTransactionOutputsByAddressRI.new(
  address: 2N5PcdirZUzKF9bWuGdugNuzcQrCbBudxv1,
  amount: 0.00873472,
  index: 1,
  is_confirmed: true,
  timestamp: 1622466746,
  transaction_id: 4b66461bf88b61e1e4326356534c135129defb504c7acb2fd6c92697d79eb250
)
```

