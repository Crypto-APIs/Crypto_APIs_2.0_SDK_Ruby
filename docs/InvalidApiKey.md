# CryptoApis::InvalidApiKey

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **String** | Specifies an error code, e.g. error 404. |  |
| **message** | **String** | Specifies the message of the error, i.e. why the error was returned, e.g. error 404 stands for “not found”. |  |
| **details** | [**Array&lt;BannedIpAddressDetails&gt;**](BannedIpAddressDetails.md) |  | [optional] |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::InvalidApiKey.new(
  code: invalid_api_key,
  message: The provided API key is invalid. Please, generate a new one from your Dashboard.,
  details: null
)
```

