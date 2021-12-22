# CryptoApis::GetTransactionDetailsByTransactionIDFromCallbackRISenders

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address** | **String** | Represents the address which sends this transaction. In UTXO-based protocols like Bitcoin there could be several senders while in account-based protocols like Ethereum there is always only one sender. |  |
| **amount** | **String** | Represents the total amount sent by this address including the fee. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::GetTransactionDetailsByTransactionIDFromCallbackRISenders.new(
  address: mtFYoSowT3i649wnBDYjCjewenh8AuofQb,
  amount: 0.00002000
)
```

