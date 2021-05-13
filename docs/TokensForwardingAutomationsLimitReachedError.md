# CryptoApis::TokensForwardingAutomationsLimitReachedError

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **String** | Specifies an error code, e.g. error 404. |  |
| **message** | **String** | Specifies the message of the error, i.e. why the error was returned, e.g. error 404 stands for “not found”. |  |
| **details** | [**Array&lt;BannedIpAddressErrorDetails&gt;**](BannedIpAddressErrorDetails.md) |  | [optional] |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::TokensForwardingAutomationsLimitReachedError.new(
  code: tokens_forwarding_automations_limit_reached,
  message: Your current package plan tokens forwarding automations limit of {automations_limit} reached. Please contact us if you need more or upgrade your plan.,
  details: null
)
```

