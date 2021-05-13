# CryptoApis::InsufficientCreditsError

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **String** | Specifies an error code, e.g. error 404. |  |
| **message** | **String** | Specifies the message of the error, i.e. why the error was returned, e.g. error 404 stands for “not found”. |  |
| **details** | [**Array&lt;BannedIpAddressErrorDetails&gt;**](BannedIpAddressErrorDetails.md) |  | [optional] |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::InsufficientCreditsError.new(
  code: insufficient_credits,
  message: You have insufficient credits. Please upgrade your plan from your Dashboard or contact our team via email.,
  details: null
)
```

