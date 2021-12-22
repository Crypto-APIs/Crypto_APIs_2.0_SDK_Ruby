# CryptoApis::EndpointNotAllowedForApiKey

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **String** | Specifies an error code, e.g. error 404. |  |
| **message** | **String** | Specifies the message of the error, i.e. why the error was returned, e.g. error 404 stands for “not found”. |  |
| **details** | [**Array&lt;BannedIpAddressDetails&gt;**](BannedIpAddressDetails.md) |  | [optional] |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::EndpointNotAllowedForApiKey.new(
  code: endpoint_not_allowed_for_api_key,
  message: This endpoint is not available for your API key.,
  details: null
)
```

