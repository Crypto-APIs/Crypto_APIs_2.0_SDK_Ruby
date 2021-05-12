# OpenapiClient::UnexpectedServerErrorError

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **String** | Specifies an error code, e.g. error 404. |  |
| **message** | **String** | Specifies the message of the error, i.e. why the error was returned, e.g. error 404 stands for “not found”. |  |
| **details** | [**Array&lt;BannedIpAddressErrorDetails&gt;**](BannedIpAddressErrorDetails.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::UnexpectedServerErrorError.new(
  code: unexpected_server_error,
  message: An unexpected server error has occurred, we are working to fix this. Please try again later and in case it occurs again please report it to our team via email.,
  details: null
)
```

