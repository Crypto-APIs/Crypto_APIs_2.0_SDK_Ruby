# CryptoApis::ListWalletTransactionsRISenders

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address** | **String** | Represents the address which sends this transaction. In UTXO-based protocols like Bitcoin there could be several senders while in account-based protocols like Ethereum there is always only one sender. |  |
| **amount** | **String** | Represents the total amount sent by this address including the fee. |  |
| **label** | **String** | Defines a plain text string as a label for the sender. | [optional] |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::ListWalletTransactionsRISenders.new(
  address: 0x6f61e3c2fbb8c8be698bd0907ba6c04b62800fe5,
  amount: 0.0001,
  label: yourStringHere
)
```

