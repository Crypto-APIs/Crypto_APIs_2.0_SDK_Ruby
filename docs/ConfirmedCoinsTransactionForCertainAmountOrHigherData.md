# CryptoApis::ConfirmedCoinsTransactionForCertainAmountOrHigherData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **product** | **String** | Represents the Crypto APIs 2.0 product which sends the callback. |  |
| **event** | **String** | Defines the specific event, for which a callback subscription is set. |  |
| **item** | [**ConfirmedCoinsTransactionForCertainAmountOrHigherDataItem**](ConfirmedCoinsTransactionForCertainAmountOrHigherDataItem.md) |  |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::ConfirmedCoinsTransactionForCertainAmountOrHigherData.new(
  product: BLOCKCHAIN_EVENTS,
  event: CONFIRMED_COINS_TRANSACTION_FOR_CERTAIN_AMOUNT_OR_HIGHER,
  item: null
)
```

