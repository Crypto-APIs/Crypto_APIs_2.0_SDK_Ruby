# CryptoApis::ListAllUnconfirmedTransactionsRIBSEC

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **fee** | [**ListAllUnconfirmedTransactionsRIBSECFee**](ListAllUnconfirmedTransactionsRIBSECFee.md) |  |  |
| **gas_limit** | **String** | Represents the amount of gas used by this specific transaction alone. |  |
| **gas_price** | [**ListAllUnconfirmedTransactionsRIBSECGasPrice**](ListAllUnconfirmedTransactionsRIBSECGasPrice.md) |  |  |
| **nonce** | **Integer** | Represents the sequential running number for an address, starting from 0 for the first transaction. E.g., if the nonce of a transaction is 10, it would be the 11th transaction sent from the sender&#39;s address. |  |
| **transaction_status** | **String** | Defines the transaction status. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::ListAllUnconfirmedTransactionsRIBSEC.new(
  fee: null,
  gas_limit: 21000,
  gas_price: null,
  nonce: 16,
  transaction_status: 0x1
)
```

