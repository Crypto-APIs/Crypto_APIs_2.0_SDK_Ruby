# CryptoApis::AddressCoinsTransactionConfirmedEachConfirmationData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **product** | **String** | Represents the Crypto APIs 2.0 product which sends the callback. |  |
| **event** | **String** | Defines the specific event, for which a callback subscription is set. |  |
| **item** | [**AddressCoinsTransactionConfirmedEachConfirmationDataItem**](AddressCoinsTransactionConfirmedEachConfirmationDataItem.md) |  |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::AddressCoinsTransactionConfirmedEachConfirmationData.new(
  product: Blockchain Data,
  event: ADDRESS_COINS_TRANSACTION_CONFIRMED_EACH_CONFIRMATION,
  item: null
)
```

