# CryptoApis::GetTransactionRequestDetailsRIRecipients

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address** | **String** | The address which receives this transaction. In UTXO-based protocols like Bitcoin there could be several senders while in account-based protocols like Ethereum there is always only one recipient. |  |
| **amount** | **String** | Represents the amount received to this address. |  |
| **unit** | **String** | Defines the unit of the amount. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::GetTransactionRequestDetailsRIRecipients.new(
  address: mr3zKBc7skyDHcVHWww4JzzziPnrdYTscR,
  amount: 0.001,
  unit: BTC
)
```

