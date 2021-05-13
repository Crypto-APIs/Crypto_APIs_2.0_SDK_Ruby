# CryptoApis::ListTransactionsByBlockHeightResponseItemBlockchainSpecificEthereum

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **contract** | **String** | Represents the specific transaction contract. |  |
| **gas_limit** | **String** | Represents the amount of gas used by this specific transaction alone. |  |
| **gas_price** | [**GetTransactionDetailsByTransactionIDResponseItemBlockchainSpecificEthereumGasPrice**](GetTransactionDetailsByTransactionIDResponseItemBlockchainSpecificEthereumGasPrice.md) |  |  |
| **gas_used** | **String** | Represents the exact unit of gas that was used for the transaction. |  |
| **input_data** | **String** | Represents additional information that is required for the transaction. |  |
| **nonce** | **Integer** | Represents the sequential running number for an address, starting from 0 for the first transaction. E.g., if the nonce of a transaction is 10, it would be the 11th transaction sent from the sender&#39;s address. |  |
| **transaction_status** | **String** | Represents the status of this transaction. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::ListTransactionsByBlockHeightResponseItemBlockchainSpecificEthereum.new(
  contract: 0x67a5cd06000000000000000000000000516de3a7a567d81737e3a46ec4ff9cfd1fcb0136,
  gas_limit: 552020,
  gas_price: null,
  gas_used: 24673,
  input_data: null,
  nonce: 16,
  transaction_status: null
)
```

