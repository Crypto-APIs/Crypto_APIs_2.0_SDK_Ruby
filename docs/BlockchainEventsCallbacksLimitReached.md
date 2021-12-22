# CryptoApis::BlockchainEventsCallbacksLimitReached

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **String** | Specifies an error code, e.g. error 404. |  |
| **message** | **String** | Specifies the message of the error, i.e. why the error was returned, e.g. error 404 stands for “not found”. |  |
| **details** | [**Array&lt;BannedIpAddressDetails&gt;**](BannedIpAddressDetails.md) |  | [optional] |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::BlockchainEventsCallbacksLimitReached.new(
  code: blockchain_events_callbacks_limit_reached,
  message: You have reached the maximum number of active Blockchain Events subscriptions which is {callbacks_limit} now. Please upgrade your plan to be get higher number of active subscriptions.,
  details: null
)
```

