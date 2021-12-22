# CryptoApis::NewConfirmedInternalTransactionsAndEachConfirmationRI

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address** | **String** | Defines the specific address of the internal transaction. |  |
| **callback_secret_key** | **String** | Represents the Secret Key value provided by the customer. This field is used for security purposes during the callback notification, in order to prove the sender of the callback as Crypto APIs. For more information please see our [Documentation](https://developers.cryptoapis.io/technical-documentation/general-information/callbacks#callback-security). |  |
| **callback_url** | **String** | Represents the URL that is set by the customer where the callback will be received at. The callback notification will be received only if and when the event occurs. |  |
| **confirmations_count** | **Integer** | Represents the number of confirmations, i.e. the amount of blocks that have been built on top of this block. |  |
| **created_timestamp** | **Integer** | Defines the specific time/date when the subscription was created in Unix Timestamp. |  |
| **event_type** | **String** | Defines the type of the specific event available for the customer to subscribe to for callback notification. |  |
| **is_active** | **Boolean** | Defines whether the subscription is active or not. Set as boolean. |  |
| **reference_id** | **String** | Represents a unique ID used to reference the specific callback subscription. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::NewConfirmedInternalTransactionsAndEachConfirmationRI.new(
  address: 0xe2b5f5e885a268e4b6faae53f99a663f3bb3e036,
  callback_secret_key: yourSecretKey,
  callback_url: https://example.com,
  confirmations_count: 3,
  created_timestamp: 1611238648,
  event_type: ADDRESS_INTERNAL_TRANSACTION_CONFIRMED_EACH_CONFIRMATION,
  is_active: true,
  reference_id: bc243c86-0902-4386-b30d-e6b30fa1f2aa
)
```

