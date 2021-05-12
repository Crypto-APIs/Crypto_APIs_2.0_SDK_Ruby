# OpenapiClient::NewUnconfirmedTokensTransactionsResponseItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address** | **String** | Defines the type of the specific event available for the customer to subscribe to for callback notification. |  |
| **callback_secret_key** | **String** | Represents the Secret Key value provided by the customer. This field is used for security purposes during the callback notification, in order to prove the sender of the callback as Crypto APIs. |  |
| **callback_url** | **String** | Represents the URL that is set by the customer where the callback will be received at. The callback notification will be received only if and when the event occurs. |  |
| **created_timestamp** | **Integer** | Defines the specific time/date when the subscription was created in Unix Timestamp. |  |
| **event_type** | **String** | Defines the type of the specific event available for the customer to subscribe to for callback notification. |  |
| **is_active** | **Boolean** | Defines whether the subscription is active or not. Set as boolean. |  |
| **reference_id** | **String** | Represents a unique ID used to reference the specific callback subscription. |  |
| **transaction_id** | **String** | Represents the unique identification string that defines the transaction. |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::NewUnconfirmedTokensTransactionsResponseItem.new(
  address: 15XyNC88pujwuuur8DCsXBCfEhJJMzHayU,
  callback_secret_key: yourSecretKey,
  callback_url: https://example.com,
  created_timestamp: 1611238648,
  event_type: ADDRESS_TOKENS_TRANSACTION_UNCONFIRMED,
  is_active: true,
  reference_id: c748624f-1843-4738-a7de-8258ada0f524,
  transaction_id: f43676625cc8a8d0ccd98a3795ad5369187cd5b279c3d06f99601566713aa961
)
```

