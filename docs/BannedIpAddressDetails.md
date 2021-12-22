# CryptoApis::BannedIpAddressDetails

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **attribute** | **String** | Specifies an attribute of the error by name. |  |
| **message** | **String** | Specifies the details of an attribute as part from the error. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::BannedIpAddressDetails.new(
  attribute: attribute which content caused the error,
  message: message describing the error
)
```

