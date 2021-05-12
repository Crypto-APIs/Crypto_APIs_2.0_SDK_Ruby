# OpenapiClient::UnsupportedMediaTypeError

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **String** | Specifies an error code, e.g. error 404. |  |
| **message** | **String** | Specifies the message of the error, i.e. why the error was returned, e.g. error 404 stands for “not found”. |  |
| **details** | [**Array&lt;BannedIpAddressErrorDetails&gt;**](BannedIpAddressErrorDetails.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::UnsupportedMediaTypeError.new(
  code: unsupported_media_type,
  message: The selected Media Type is unavailable. The Content-Type header should be &#39;application/json&#39;.,
  details: null
)
```

