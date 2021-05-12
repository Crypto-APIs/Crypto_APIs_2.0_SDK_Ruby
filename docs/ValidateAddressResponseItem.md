# OpenapiClient::ValidateAddressResponseItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address** | **String** | Represents the specific address that will be checked if it&#39;s valid or not. |  |
| **is_valid** | **Boolean** | Defines whether the address is valid or not. Set as boolean. |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ValidateAddressResponseItem.new(
  address: 15XyNC88pujwuuur8DCsXBCfEhJJMzHayU,
  is_valid: true
)
```

