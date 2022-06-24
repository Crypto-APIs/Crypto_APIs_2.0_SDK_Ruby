# CryptoApis::ListWalletTransactionsRIRecipientsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address** | **String** | The address which receives this transaction. In UTXO-based protocols like Bitcoin there could be several senders while in account-based protocols like Ethereum there is always only one recipient. |  |
| **amount** | **String** | Represents the amount received to this address. |  |
| **label** | **String** | Defines a plain text string as a label for the recipient. | [optional] |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::ListWalletTransactionsRIRecipientsInner.new(
  address: 0x6f61e3c2fbb8c8be698bd0907ba6c04b62800fe5,
  amount: 0.00427167,
  label: yourStringHere
)
```

