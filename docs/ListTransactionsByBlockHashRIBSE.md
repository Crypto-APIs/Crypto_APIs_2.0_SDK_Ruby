# CryptoApis::ListTransactionsByBlockHashRIBSE

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **contract** | **String** | Represents the specific transaction contract. |  |
| **gas_limit** | **String** | String representation of the transaction Represents the amount of gas used by this specific transaction alone. |  |
| **gas_price** | [**ListTransactionsByBlockHashRIBSEGasPrice**](ListTransactionsByBlockHashRIBSEGasPrice.md) |  |  |
| **gas_used** | **String** | Represents the exact unit of gas that was used for the transaction. |  |
| **input_data** | **String** | Represents additional information that is required for the transaction. |  |
| **nonce** | **Integer** | Represents the sequential running number for an address, starting from 0 for the first transaction. E.g., if the nonce of a transaction is 10, it would be the 11th transaction sent from the sender&#39;s address. |  |
| **transaction_status** | **String** | Represents the status of this transaction. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::ListTransactionsByBlockHashRIBSE.new(
  contract: 0x20fe562d797a42dcb3399062ae9546cd06f63280,
  gas_limit: 21000,
  gas_price: null,
  gas_used: 21000,
  input_data: 0xa9059cbb000000000000000000000000acc59ec2f7119dc7a9e69dcd124cff75caae05bf0000000000000000000000000000000000000000000000000000000000989680,
  nonce: 16,
  transaction_status: null
)
```

