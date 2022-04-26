# CryptoApis::ListBlockchainEventsSubscriptionsRIDeactivationReasons

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **reason** | **String** | Defines the deactivation reason as a message. |  |
| **timestamp** | **Integer** | Represents the time of the subscription deactivation. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::ListBlockchainEventsSubscriptionsRIDeactivationReasons.new(
  reason: maximum_retry_attempts_reached,
  timestamp: 1642102581
)
```

