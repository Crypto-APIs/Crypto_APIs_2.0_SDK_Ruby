# CryptoApis::AddressTokensTransactionUnconfirmedData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **product** | **String** | Represents the Crypto APIs 2.0 product which sends the callback. |  |
| **event** | **String** | Defines the specific event, for which a callback subscription is set. |  |
| **item** | [**AddressTokensTransactionUnconfirmedDataItem**](AddressTokensTransactionUnconfirmedDataItem.md) |  |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::AddressTokensTransactionUnconfirmedData.new(
  product: Blockchain Events,
  event: ADDRESS_TOKENS_TRANSACTION_UNCONFIRMED,
  item: null
)
```

