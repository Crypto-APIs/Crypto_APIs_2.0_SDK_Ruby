# OpenapiClient::NewConfirmedTokensTransactionsAndEachConfirmationResponseItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address** | **String** | Represents the address of the transaction, per which the result is returned. |  |
| **callback_url** | **String** | Represents the URL that is set by the customer where the callback will be received at. The callback notification will be received only if and when the event occurs. |  |
| **created_timestamp** | **Integer** | Defines the specific time/date when the subscription was created in Unix Timestamp. |  |
| **event_type** | **String** | Defines the type of the specific event available for the customer to subscribe to for callback notification. |  |
| **reference_id** | **String** | Represents a unique ID used to reference the specific callback subscription. |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::NewConfirmedTokensTransactionsAndEachConfirmationResponseItem.new(
  address: mwDuExdjRewYKYoR454sZGvd15LnJVsmoR,
  callback_url: https://example.com,
  created_timestamp: 1236238648,
  event_type: ADDRESS_TOKENS_TRANSACTION_CONFIRMED_EACH_CONFIRAMTION,
  reference_id: c748624f-1843-4738-a7de-8258ada0f524
)
```

