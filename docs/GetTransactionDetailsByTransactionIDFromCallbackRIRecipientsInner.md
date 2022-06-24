# CryptoApis::GetTransactionDetailsByTransactionIDFromCallbackRIRecipientsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address** | **String** | The address which receives this transaction. In UTXO-based protocols like Bitcoin there could be several senders while in account-based protocols like Ethereum there is always only one recipient. |  |
| **amount** | **String** | Represents the amount received to this address. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::GetTransactionDetailsByTransactionIDFromCallbackRIRecipientsInner.new(
  address: 2NGHH9qxCADY5eTNFUKobi1xiMWoW6FYSCd,
  amount: 0.00001600
)
```

