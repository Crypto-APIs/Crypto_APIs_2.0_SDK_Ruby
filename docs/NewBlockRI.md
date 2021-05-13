# CryptoApis::NewBlockRI

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **callback_secret_key** | **String** | Represents the Secret Key value provided by the customer. This field is used for security purposes during the callback notification, in order to prove the sender of the callback as Crypto APIs. |  |
| **callback_url** | **String** | Represents the URL that is set by the customer where the callback will be received at. The callback notification will be received only if and when the event occurs. |  |
| **created_timestamp** | **Integer** | Defines the specific time/date when the subscription was created in Unix Timestamp. |  |
| **is_active** | **Boolean** | Defines whether the subscription is active or not. Set as boolean. |  |
| **reference_id** | **String** | Represents a unique ID used to reference the specific callback subscription. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::NewBlockRI.new(
  callback_secret_key: yourSecretKey,
  callback_url: http://yourURL.com,
  created_timestamp: 1611238648,
  is_active: true,
  reference_id: 4c530a43-5602-41d9-bc69-156a0372f9aa
)
```

