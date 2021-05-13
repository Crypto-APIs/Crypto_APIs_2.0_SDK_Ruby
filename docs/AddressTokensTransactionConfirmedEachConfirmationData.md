# CryptoApis::AddressTokensTransactionConfirmedEachConfirmationData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **product** | **String** | Represents the Crypto APIs 2.0 product which sends the callback. |  |
| **event** | **String** | Defines the specific event, for which a callback subscription is set. |  |
| **item** | [**AddressTokensTransactionConfirmedEachConfirmationDataItem**](AddressTokensTransactionConfirmedEachConfirmationDataItem.md) |  |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::AddressTokensTransactionConfirmedEachConfirmationData.new(
  product: Blockchain Events,
  event: ADDRESS_TOKENS_TRANSACTION_CONFIRMED_EACH_CONFIRMATION,
  item: null
)
```

