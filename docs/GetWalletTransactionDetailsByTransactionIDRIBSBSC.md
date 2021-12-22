# CryptoApis::GetWalletTransactionDetailsByTransactionIDRIBSBSC

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **contract** | **String** | Represents the specific transaction contract |  |
| **gas_limit** | **String** | Represents the amount of gas used by this specific transaction alone. |  |
| **gas_price** | [**GetTransactionDetailsByTransactionIDRIBSBSCGasPrice**](GetTransactionDetailsByTransactionIDRIBSBSCGasPrice.md) |  |  |
| **gas_used** | **String** | Defines the unit of the gas price amount, e.g. BTC, ETH, XRP. |  |
| **input_data** | **String** | Represents additional information that is required for the transaction. |  |
| **nonce** | **Integer** | Represents the sequential running number for an address, starting from 0 for the first transaction. E.g., if the nonce of a transaction is 10, it would be the 11th transaction sent from the sender&#39;s address. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::GetWalletTransactionDetailsByTransactionIDRIBSBSC.new(
  contract: 0x0000000000000000000000000000000000001000,
  gas_limit: 21000,
  gas_price: null,
  gas_used: 21000,
  input_data: 0x,
  nonce: 25341
)
```

