# CryptoApis::ListAllUnconfirmedTransactionsRIBSE

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **fee** | [**ListAllUnconfirmedTransactionsRIBSEFee**](ListAllUnconfirmedTransactionsRIBSEFee.md) |  |  |
| **gas_limit** | **String** | Represents the amount of gas used by this specific transaction alone. |  |
| **gas_price** | [**ListAllUnconfirmedTransactionsRIBSEGasPrice**](ListAllUnconfirmedTransactionsRIBSEGasPrice.md) |  |  |
| **input_data** | **String** | Represents additional information that is required for the transaction. |  |
| **nonce** | **Integer** | Represents the sequential running number for an address, starting from 0 for the first transaction. E.g., if the nonce of a transaction is 10, it would be the 11th transaction sent from the sender&#39;s address. |  |
| **transaction_status** | **String** | Defines the transaction status. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::ListAllUnconfirmedTransactionsRIBSE.new(
  fee: null,
  gas_limit: 552020,
  gas_price: null,
  input_data: 0x67a5cd0600000000000000000000000031f42841c2db5173425b5223809cf3a38fede360,
  nonce: 12,
  transaction_status: 0x1
)
```

