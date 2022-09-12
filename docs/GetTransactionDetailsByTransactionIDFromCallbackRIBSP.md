# CryptoApis::GetTransactionDetailsByTransactionIDFromCallbackRIBSP

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **String** | Representation of the amount value. |  |
| **contract** | **String** | Represents the specific transaction contract. |  |
| **gas** | **String** | Represents the price offered to the miner to purchase this amount of gas. |  |
| **gas_price** | **String** | Represents the price offered to the miner to purchase this amount of gas. |  |
| **gas_used** | **String** | Represents the exact unit of gas that was used for the transaction. |  |
| **input** | **String** | Represents additional information that is required for the transaction. |  |
| **nonce** | **Integer** | Represents the sequential running number for an address, starting from 0 for the first transaction. E.g., if the nonce of a transaction is 10, it would be the 11th transaction sent from the sender&#39;s address. |  |
| **recipients** | **String** | Represents a list of recipient addresses with the respective amounts. In account-based protocols like Ethereum there is only one address in this list. |  |
| **senders** | **String** | Represents a list of sender addresses with the respective amounts. In account-based protocols like Ethereum there is only one address in this list. |  |
| **transaction_status** | **String** | Represents the status of this transaction. |  |
| **txid** | **String** | Represents the unique identifier of a transaction, i.e. it could be transactionId in UTXO-based protocols like Bitcoin, and transaction hash in Ethereum blockchain. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::GetTransactionDetailsByTransactionIDFromCallbackRIBSP.new(
  amount: 5,
  contract: 0x20fe562d797a42dcb3399062ae9546cd06f63280,
  gas: 2994782927,
  gas_price: 2994782927,
  gas_used: 24673,
  input: 0x67a5cd0600000000000000000000000031f42841c2db5173425b5223809cf3a38fede360,
  nonce: 15,
  recipients: null,
  senders: null,
  transaction_status: 0x1,
  txid: null
)
```

