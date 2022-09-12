# CryptoApis::PrepareAUTXOBasedTransactionFromHDWalletXPubYPubZPubRBDataItemRecipientsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address** | **String** | The address which receives this transaction. In UTXO-based protocols like Bitcoin there could be several senders while in account-based protocols like Ethereum there is always only one recipient. |  |
| **amount** | **String** | Represents the amount value |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::PrepareAUTXOBasedTransactionFromHDWalletXPubYPubZPubRBDataItemRecipientsInner.new(
  address: tb1q8wus03xdv3t6aknmsnpd0jmeu7dgh93j34pj5a,
  amount: 0.00003
)
```

