# OpenapiClient::InvalidNetworkError

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **String** | Specifies an error code, e.g. error 404. |  |
| **message** | **String** | Specifies the message of the error, i.e. why the error was returned, e.g. error 404 stands for “not found”. |  |
| **details** | [**Array&lt;BannedIpAddressErrorDetails&gt;**](BannedIpAddressErrorDetails.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::InvalidNetworkError.new(
  code: invalid_network,
  message: The provided network is invalid. The network **must** be a supported one. For the full list of supported networks please see our Documentation.,
  details: null
)
```

