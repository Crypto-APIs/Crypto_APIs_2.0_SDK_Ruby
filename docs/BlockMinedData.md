# CryptoApis::BlockMinedData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **product** | **String** | Represents the Crypto APIs 2.0 product which sends the callback. |  |
| **event** | **String** | Defines the specific event, for which a callback subscription is set. |  |
| **item** | [**BlockMinedDataItem**](BlockMinedDataItem.md) |  |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::BlockMinedData.new(
  product: Blockchain Events,
  event: BLOCK_MINED,
  item: null
)
```

