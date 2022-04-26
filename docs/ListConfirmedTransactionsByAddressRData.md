# CryptoApis::ListConfirmedTransactionsByAddressRData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | Defines how many items should be returned in the response per page basis. |  |
| **offset** | **Integer** | The starting index of the response items, i.e. where the response should start listing the returned items. |  |
| **total** | **Integer** | Defines the total number of items returned in the response. |  |
| **items** | [**Array&lt;ListConfirmedTransactionsByAddressRI&gt;**](ListConfirmedTransactionsByAddressRI.md) |  |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::ListConfirmedTransactionsByAddressRData.new(
  limit: 50,
  offset: 0,
  total: 100,
  items: []
)
```

