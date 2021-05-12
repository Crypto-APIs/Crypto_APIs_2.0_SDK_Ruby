# OpenapiClient::ListOmniTokensByAddressResponseItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **balance** | **String** | Defines the balance of the Omni tokens to send in the address. |  |
| **frozen** | **String** | Defines the amount frozen by the issuer (applies to managed properties only). |  |
| **name** | **String** | Defines the name of the Omni tokens to send. |  |
| **property_id** | **Integer** | Represents the identifier of the tokens to send. |  |
| **reserved** | **String** | Represents the amount reserved by sell offers and accepts. |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ListOmniTokensByAddressResponseItem.new(
  balance: 29,
  frozen: 0,
  name: Omni tokens,
  property_id: 1,
  reserved: 0
)
```

