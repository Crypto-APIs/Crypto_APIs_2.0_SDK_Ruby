# CryptoApis::BroadcastLocallySignedTransactionRI

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **transaction_id** | **String** | Represents the unique identifier of a transaction, i.e. it could be &#x60;transactionId&#x60; in UTXO-based protocols like Bitcoin, and transaction &#x60;hash&#x60; in Ethereum blockchain. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::BroadcastLocallySignedTransactionRI.new(
  transaction_id: 347d96855d41b77f1e23048fff11c18e9fe699ee69b0b402338f34189734e0a2
)
```

