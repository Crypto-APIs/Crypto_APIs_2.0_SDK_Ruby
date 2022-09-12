# CryptoApis::BlockHeightReachedData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **product** | **String** | Represents the Crypto APIs 2.0 product which sends the callback. |  |
| **event** | **String** | Defines the specific event, for which a callback subscription is set. |  |
| **item** | [**BlockHeightReachedDataItem**](BlockHeightReachedDataItem.md) |  |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::BlockHeightReachedData.new(
  product: BLOCKCHAIN_EVENTS,
  event: BLOCK_HEIGHT_REACHED,
  item: null
)
```

