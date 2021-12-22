# CryptoApis::NewConfirmedTokensTransactionsAndEachConfirmationRI

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address** | **String** | Represents the address of the transaction, per which the result is returned. |  |
| **callback_url** | **String** | Represents the URL that is set by the customer where the callback will be received at. The callback notification will be received only if and when the event occurs. |  |
| **confirmations_count** | **Integer** | Represents the number of confirmations, i.e. the amount of blocks that have been built on top of this block. | [optional] |
| **created_timestamp** | **Integer** | Defines the specific time/date when the subscription was created in Unix Timestamp. |  |
| **event_type** | **String** | Defines the type of the specific event available for the customer to subscribe to for callback notification. |  |
| **reference_id** | **String** | Represents a unique ID used to reference the specific callback subscription. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::NewConfirmedTokensTransactionsAndEachConfirmationRI.new(
  address: 0x7495fede000c8a3b77eeae09cf70fa94cd2d53f5,
  callback_url: https://example.com,
  confirmations_count: 3,
  created_timestamp: 1236238648,
  event_type: ADDRESS_TOKENS_TRANSACTION_CONFIRMED_EACH_CONFIRAMTION,
  reference_id: c748624f-1843-4738-a7de-8258ada0f524
)
```

