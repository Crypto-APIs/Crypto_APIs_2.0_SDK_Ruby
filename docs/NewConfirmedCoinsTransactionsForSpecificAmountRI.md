# CryptoApis::NewConfirmedCoinsTransactionsForSpecificAmountRI

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount_higher_than** | **Integer** | Represents a specific amount of coins after which the system have to send a callback to customers&#39; callbackUrl. |  |
| **callback_secret_key** | **String** | Represents the Secret Key value provided by the customer. This field is used for security purposes during the callback notification, in order to prove the sender of the callback as Crypto APIs. For more information please see our [Documentation](https://developers.cryptoapis.io/technical-documentation/general-information/callbacks#callback-security). | [optional] |
| **callback_url** | **String** | Represents the URL that is set by the customer where the callback will be received at. The callback notification will be received only if and when the event occurs. &#x60;We support ONLY httpS type of protocol&#x60;. |  |
| **created_timestamp** | **Integer** | Defines the specific time/date when the subscription was created in Unix Timestamp. |  |
| **event_type** | **String** | Defines the type of the specific event available for the customer to subscribe to for callback notification. |  |
| **is_active** | **Boolean** | Defines whether the subscription is active or not. Set as boolean. |  |
| **reference_id** | **String** | Represents a unique ID used to reference the specific callback subscription. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::NewConfirmedCoinsTransactionsForSpecificAmountRI.new(
  amount_higher_than: 2,
  callback_secret_key: yourSecretKey,
  callback_url: https://example.com,
  created_timestamp: 1611238648,
  event_type: CONFIRMED_COINS_TRANSACTION_FOR_CERTAIN_AMOUNT_OR_HIGHER,
  is_active: true,
  reference_id: bc243c86-0902-4386-b30d-e6b30fa1f2aa
)
```

