# OpenapiClient::ListAssetsDetailsResponseData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **offset** | **Integer** | The starting index of the response items, i.e. where the response should start listing the returned items. |  |
| **limit** | **Integer** | Defines how many items should be returned in the response per page basis. |  |
| **total** | **Integer** | Defines the total number of items returned in the response. |  |
| **items** | [**Array&lt;ListAssetsDetailsResponseItem&gt;**](ListAssetsDetailsResponseItem.md) |  |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ListAssetsDetailsResponseData.new(
  offset: 0,
  limit: 50,
  total: 100,
  items: []
)
```

