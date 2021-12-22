# CryptoApis::AddressInternalTransactionConfirmedEachConfirmationData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **product** | **String** | Represents the Crypto APIs 2.0 product which sends the callback. |  |
| **event** | **String** | Defines the specific event, for which a callback subscription is set. |  |
| **item** | [**AddressInternalTransactionConfirmedEachConfirmationDataItem**](AddressInternalTransactionConfirmedEachConfirmationDataItem.md) |  |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::AddressInternalTransactionConfirmedEachConfirmationData.new(
  product: BLOCKCHAIN_DATA,
  event: ADDRESS_INTERNAL_TRANSACTION_CONFIRMED_EACH_CONFIRMATION,
  item: null
)
```

