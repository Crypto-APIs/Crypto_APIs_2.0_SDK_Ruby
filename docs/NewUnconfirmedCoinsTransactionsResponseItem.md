# OpenapiClient::NewUnconfirmedCoinsTransactionsResponseItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **callback_secret_key** | **String** | Represents the Secret Key value provided by the customer. This field is used for security purposes during the callback notification, in order to prove the sender of the callback as Crypto APIs. |  |
| **callback_url** | **String** | Represents the URL that is set by the customer where the callback will be received at. The callback notification will be received only if and when the event occurs. |  |
| **confirmations_count** | **Integer** | Represents the number of confirmations, i.e. the amount of blocks that have been built on top of this block. |  |
| **created_timestamp** | **Integer** | Defines the specific time/date when the subscription was created in Unix Timestamp. |  |
| **event_type** | **String** | Defines the type of the specific event available for the customer to subscribe to for callback notification. |  |
| **is_active** | **Boolean** | Defines whether the subscription is active or not. Set as boolean. |  |
| **reference_id** | **String** | Represents a unique ID used to reference the specific callback subscription. |  |
| **transaction_id** | **String** | Represents the unique identification string that defines the transaction. |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::NewUnconfirmedCoinsTransactionsResponseItem.new(
  callback_secret_key: yourSecretKey,
  callback_url: https://example.com,
  confirmations_count: 4,
  created_timestamp: 1611238648,
  event_type: ADDRESS_COINS_TRANSACTION_UNCONFIRMED,
  is_active: true,
  reference_id: bc243c86-0902-4386-b30d-e6b30fa1f2aa,
  transaction_id: 96b4ea92dcca3a046c0ca2738ed9400f3c04f6c5f497cce4f3a148b1c948a1b3
)
```

