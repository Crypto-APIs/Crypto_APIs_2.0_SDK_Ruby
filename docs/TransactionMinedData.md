# OpenapiClient::TransactionMinedData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **product** | **String** | Represents the Crypto APIs 2.0 product which sends the callback. |  |
| **event** | **String** | Defines the specific event, for which a callback subscription is set. |  |
| **item** | [**TransactionMinedDataItem**](TransactionMinedDataItem.md) |  |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::TransactionMinedData.new(
  product: Blockchain Events,
  event: TRANSACTION_MINED,
  item: null
)
```

