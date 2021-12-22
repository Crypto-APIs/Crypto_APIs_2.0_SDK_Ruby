# CryptoApis::GetTransactionDetailsByTransactionIDFromCallbackRIBSZ2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **gas_limit** | **Integer** | Represents the maximum amount of gas allowed in the block in order to determine how many transactions it can fit. |  |
| **gas_price** | [**GetTransactionDetailsByTransactionIDFromCallbackRIBSZ2GasPrice**](GetTransactionDetailsByTransactionIDFromCallbackRIBSZ2GasPrice.md) |  |  |
| **gas_used** | **Integer** | Defines how much of the gas for the block has been used. |  |
| **nonce** | **Integer** | Represents the sequential running number for an address, starting from 0 for the first transaction. E.g., if the nonce of a transaction is 10, it would be the 11th transaction sent from the sender&#39;s address. |  |
| **transaction_status** | **String** | Represents the status of this transaction. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::GetTransactionDetailsByTransactionIDFromCallbackRIBSZ2.new(
  gas_limit: 552020,
  gas_price: null,
  gas_used: 24673,
  nonce: 16,
  transaction_status: 0x1
)
```

