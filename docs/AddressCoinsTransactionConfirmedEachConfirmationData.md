# OpenapiClient::AddressCoinsTransactionConfirmedEachConfirmationData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **product** | **String** | Represents the Crypto APIs 2.0 product which sends the callback. |  |
| **event** | **String** | Defines the specific event, for which a callback subscription is set. |  |
| **item** | [**AddressCoinsTransactionConfirmedEachConfirmationDataItem**](AddressCoinsTransactionConfirmedEachConfirmationDataItem.md) |  |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::AddressCoinsTransactionConfirmedEachConfirmationData.new(
  product: Blockchain Events,
  event: ADDRESS_COINS_TRANSACTION_CONFIRMED_EACH_CONFIRMATION,
  item: null
)
```

