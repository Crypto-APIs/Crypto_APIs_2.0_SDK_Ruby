# CryptoApis::ListTransactionsByBlockHashRData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **offset** | **Integer** | The starting index of the response items, i.e. where the response should start listing the returned items. |  |
| **limit** | **Integer** | Defines how many items should be returned in the response per page basis. |  |
| **total** | **Integer** | Defines the total number of items returned in the response. |  |
| **items** | [**Array&lt;ListTransactionsByBlockHashRI&gt;**](ListTransactionsByBlockHashRI.md) |  |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::ListTransactionsByBlockHashRData.new(
  offset: 0,
  limit: 50,
  total: 100,
  items: []
)
```

