# CryptoApis::DeleteBlockchainEventSubscriptionRI

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **callback_secret_key** | **String** | Represents the Secret Key value provided by the customer. This field is used for security purposes during the callback notification, in order to prove the sender of the callback as Crypto APIs. For more information please see our [Documentation](https://developers.cryptoapis.io/technical-documentation/general-information/callbacks#callback-security). |  |
| **callback_url** | **String** | Represents the URL that is set by the customer where the callback will be received at. The callback notification will be received only if and when the event occurs. |  |
| **created_timestamp** | **Integer** | Defines the specific time/date when the subscription was created in Unix Timestamp. |  |
| **event_type** | **String** | Defines the type of the specific event available for the customer to subscribe to for callback notification. |  |
| **reference_id** | **String** | Represents a unique ID used to reference the specific callback subscription. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::DeleteBlockchainEventSubscriptionRI.new(
  callback_secret_key: yourSecretKey,
  callback_url: http://example.com,
  created_timestamp: 1611238648,
  event_type: ADDRESS_COINS_TRANSACTION_UNCONFIRMED,
  reference_id: 6de9a6ae-1463-458c-81a5-16d68d108012
)
```

