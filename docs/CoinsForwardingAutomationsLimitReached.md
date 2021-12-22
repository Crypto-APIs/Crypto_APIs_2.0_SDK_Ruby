# CryptoApis::CoinsForwardingAutomationsLimitReached

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **String** | Specifies an error code, e.g. error 404. |  |
| **message** | **String** | Specifies the message of the error, i.e. why the error was returned, e.g. error 404 stands for “not found”. |  |
| **details** | [**Array&lt;BannedIpAddressDetails&gt;**](BannedIpAddressDetails.md) |  | [optional] |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::CoinsForwardingAutomationsLimitReached.new(
  code: coins_forwarding_automations_limit_reached,
  message: Your current package plan coins forwarding automations limit of {automations_limit} reached. Please contact us if you need more or upgrade your plan.,
  details: null
)
```

