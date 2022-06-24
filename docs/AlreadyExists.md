# CryptoApis::AlreadyExists

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **String** | Specifies an error code, e.g. error 404. |  |
| **message** | **String** | Specifies the message of the error, i.e. why the error was returned, e.g. error 404 stands for “not found”. |  |
| **details** | [**Array&lt;BannedIpAddressDetailsInner&gt;**](BannedIpAddressDetailsInner.md) |  | [optional] |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::AlreadyExists.new(
  code: already_exists,
  message: The specified resource already exists.,
  details: null
)
```

