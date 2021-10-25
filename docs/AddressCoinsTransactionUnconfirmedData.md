# CryptoApis::AddressCoinsTransactionUnconfirmedData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **product** | **String** | Represents the Crypto APIs 2.0 product which sends the callback. |  |
| **event** | **String** | Defines the specific event, for which a callback subscription is set. |  |
| **item** | [**AddressCoinsTransactionUnconfirmedDataItem**](AddressCoinsTransactionUnconfirmedDataItem.md) |  |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::AddressCoinsTransactionUnconfirmedData.new(
  product: BLOCKCHAIN_EVENTS,
  event: ADDRESS_COINS_TRANSACTION_UNCONFIRMED,
  item: null
)
```

