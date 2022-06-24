# CryptoApis::LimitGreaterThanAllowed

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **String** | Specifies an error code, e.g. error 404. |  |
| **message** | **String** | Specifies the message of the error, i.e. why the error was returned, e.g. error 404 stands for “not found”. |  |
| **details** | [**Array&lt;BannedIpAddressDetailsInner&gt;**](BannedIpAddressDetailsInner.md) |  | [optional] |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::LimitGreaterThanAllowed.new(
  code: limit_greater_than_allowed,
  message: You have reached the allowed limit. The maximum number of items for this endpoint is {limit}, please use the specific pagination attributes to get the items in portions.,
  details: null
)
```

