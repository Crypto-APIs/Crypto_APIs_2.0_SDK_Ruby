# OpenapiClient::ListTransactionsByAddressResponseItemBlockchainSpecificEthereumClassic

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **contract** | **String** | Represents the specific transaction contract. |  |
| **gas_limit** | **String** | Represents the amount of gas used by this specific transaction alone. |  |
| **gas_price** | [**ListTransactionsByAddressResponseItemBlockchainSpecificEthereumClassicGasPrice**](ListTransactionsByAddressResponseItemBlockchainSpecificEthereumClassicGasPrice.md) |  |  |
| **gas_used** | **String** | Represents the exact unit of gas that was used for the transaction. |  |
| **input_data** | **String** | Represents additional information that is required for the transaction. |  |
| **nonce** | **Integer** | Represents the sequential running number for an address, starting from 0 for the first transaction. E.g., if the nonce of a transaction is 10, it would be the 11th transaction sent from the sender&#39;s address. |  |
| **transaction_status** | **String** | String representation of the transaction status |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ListTransactionsByAddressResponseItemBlockchainSpecificEthereumClassic.new(
  contract: null,
  gas_limit: 21000,
  gas_price: null,
  gas_used: 21000,
  input_data: 0xa9059cbb000000000000000000000000acc59ec2f7119dc7a9e69dcd124cff75caae05bf0000000000000000000000000000000000000000000000000000000000989680,
  nonce: 16,
  transaction_status: null
)
```

