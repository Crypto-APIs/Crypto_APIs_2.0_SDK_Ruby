# CryptoApis::ListUnconfirmedTransactionsByAddressRIRecipientsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address** | **String** | The address which receives this transaction. In UTXO-based protocols like Bitcoin there could be several senders while in account-based protocols like Ethereum there is always only one recipient. |  |
| **amount** | **String** | Represents the amount received to this address. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::ListUnconfirmedTransactionsByAddressRIRecipientsInner.new(
  address: tb1qdc0jaryry3u56j94xp5zeyhn9zjuzkqec2mvfh,
  amount: 0.09720621
)
```

