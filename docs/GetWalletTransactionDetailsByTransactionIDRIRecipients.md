# CryptoApis::GetWalletTransactionDetailsByTransactionIDRIRecipients

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address** | **String** | The address which receives this transaction. In UTXO-based protocols like Bitcoin there could be several senders while in account-based protocols like Ethereum there is always only one recipient. |  |
| **amount** | **String** | Represents the amount received to this address. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::GetWalletTransactionDetailsByTransactionIDRIRecipients.new(
  address: tb1qrktdykdjcjeuy2cfzgfjg0ky6sxaf82v8tn2dg,
  amount: 0.00004069
)
```

