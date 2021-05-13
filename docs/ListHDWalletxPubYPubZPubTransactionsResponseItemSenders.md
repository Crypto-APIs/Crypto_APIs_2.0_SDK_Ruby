# CryptoApis::ListHDWalletxPubYPubZPubTransactionsResponseItemSenders

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address** | **String** | Represents the address which sends this transaction. In UTXO-based protocols like Bitcoin there could be several senders while in account-based protocols like Ethereum there is always only one sender. |  |
| **amount** | **String** | Represents the amount sent by this address. |  |
| **is_member** | **Boolean** | Defines whether an address is a child address derived from the HD wallet (xPub, yPub, zPub) as boolean. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::ListHDWalletxPubYPubZPubTransactionsResponseItemSenders.new(
  address: 2N5PcdirZUzKF9bWuGdugNuzcQrCbBudxv1,
  amount: 0.00873472,
  is_member: true
)
```

