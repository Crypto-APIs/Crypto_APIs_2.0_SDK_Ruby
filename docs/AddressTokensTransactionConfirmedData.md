# CryptoApis::AddressTokensTransactionConfirmedData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **product** | **String** | Represents the Crypto APIs 2.0 product which sends the callback. |  |
| **event** | **String** | Defines the specific event, for which a callback subscription is set. |  |
| **item** | [**AddressTokensTransactionConfirmedDataItem**](AddressTokensTransactionConfirmedDataItem.md) |  |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::AddressTokensTransactionConfirmedData.new(
  product: Blockchain Events,
  event: ADDRESS_TOKENS_TRANSACTION_CONFIRMED,
  item: null
)
```

