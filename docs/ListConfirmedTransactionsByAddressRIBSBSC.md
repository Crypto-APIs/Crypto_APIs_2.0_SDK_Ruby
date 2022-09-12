# CryptoApis::ListConfirmedTransactionsByAddressRIBSBSC

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **contract** | **String** | Represents the specific transaction contract. | [optional] |
| **gas_limit** | **String** | Represents the amount of gas used by this specific transaction alone. |  |
| **gas_price** | [**ListConfirmedTransactionsByAddressRIBSBSCGasPrice**](ListConfirmedTransactionsByAddressRIBSBSCGasPrice.md) |  |  |
| **gas_used** | **String** | Represents the exact unit of gas that was used for the transaction. |  |
| **input_data** | **String** | Represents additional information that is required for the transaction. |  |
| **internal_transactions_count** | **Integer** | Represents the total internal transactions count. |  |
| **nonce** | **Integer** | Represents the sequential running number for an address, starting from 0 for the first transaction. E.g., if the nonce of a transaction is 10, it would be the 11th transaction sent from the sender&#39;s address. |  |
| **token_transfers_count** | **Integer** | Represents the total token transfers count. |  |
| **transaction_status** | **String** | String representation of the transaction status |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::ListConfirmedTransactionsByAddressRIBSBSC.new(
  contract: 0x0000000000000000000000000000000000001000,
  gas_limit: 21000,
  gas_price: null,
  gas_used: 21000,
  input_data: 0x,
  internal_transactions_count: 2,
  nonce: 25341,
  token_transfers_count: 2,
  transaction_status: 0x1
)
```

