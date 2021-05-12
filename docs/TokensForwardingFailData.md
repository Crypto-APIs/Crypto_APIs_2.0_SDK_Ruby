# OpenapiClient::TokensForwardingFailData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **product** | **String** | Represents the Crypto APIs 2.0 product which sends the callback. |  |
| **event** | **String** | Defines the specific event, for which a callback subscription is set. |  |
| **item** | [**TokensForwardingFailDataItem**](TokensForwardingFailDataItem.md) |  |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::TokensForwardingFailData.new(
  product: Blockchain Automations,
  event: TOKENS_FORWARDING_FAIL,
  item: null
)
```

