# CryptoApis::ListHDWalletXPubYPubZPubTransactionsRIRecipients

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address** | **String** | The address which receives this transaction. In UTXO-based protocols like Bitcoin there could be several senders while in account-based protocols like Ethereum there is always only one recipient. |  |
| **amount** | **String** | Represents the amount received to this address. |  |
| **is_member** | **Boolean** | Defines whether an address is a child address derived from the HD wallet (xPub, yPub, zPub) as boolean. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::ListHDWalletXPubYPubZPubTransactionsRIRecipients.new(
  address: 2MzakdGTEp8SMWEHKwKM4HYv6uNCBXtHpkV,
  amount: 0.000144,
  is_member: false
)
```

