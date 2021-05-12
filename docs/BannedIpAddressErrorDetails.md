# OpenapiClient::BannedIpAddressErrorDetails

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **attribute** | **String** | Specifies an attribute of the error by name. |  |
| **message** | **String** | Specifies the details of an attribute as part from the error. |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::BannedIpAddressErrorDetails.new(
  attribute: attribute which content caused the error,
  message: message describing the error
)
```

