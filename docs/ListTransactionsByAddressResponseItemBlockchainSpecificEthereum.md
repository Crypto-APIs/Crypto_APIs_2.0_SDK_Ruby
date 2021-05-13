# CryptoApis::ListTransactionsByAddressResponseItemBlockchainSpecificEthereum

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **contract** | **String** | Represents the specific transaction contract. |  |
| **gas_limit** | **String** | Represents the amount of gas used by this specific transaction alone. |  |
| **gas_price** | [**ListTransactionsByAddressResponseItemBlockchainSpecificEthereumGasPrice**](ListTransactionsByAddressResponseItemBlockchainSpecificEthereumGasPrice.md) |  |  |
| **gas_used** | **String** | Represents the exact unit of gas that was used for the transaction. |  |
| **input_data** | **String** | Represents additional information that is required for the transaction. |  |
| **nonce** | **Integer** | Represents the sequential running number for an address, starting from 0 for the first transaction. E.g., if the nonce of a transaction is 10, it would be the 11th transaction sent from the sender&#39;s address. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::ListTransactionsByAddressResponseItemBlockchainSpecificEthereum.new(
  contract: null,
  gas_limit: 552020,
  gas_price: null,
  gas_used: 24673,
  input_data: 0x67a5cd0600000000000000000000000031f42841c2db5173425b5223809cf3a38fede360,
  nonce: 13
)
```

