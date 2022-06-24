# CryptoApis::InvalidRequestBodyStructure

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **String** | Specifies an error code, e.g. error 404. |  |
| **message** | **String** | Specifies the message of the error, i.e. why the error was returned, e.g. error 404 stands for “not found”. |  |
| **details** | [**Array&lt;BannedIpAddressDetailsInner&gt;**](BannedIpAddressDetailsInner.md) |  | [optional] |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::InvalidRequestBodyStructure.new(
  code: invalid_request_body_structure,
  message: Your request body for POST requests must have a structure of { data: { item: [...properties] } },
  details: null
)
```

