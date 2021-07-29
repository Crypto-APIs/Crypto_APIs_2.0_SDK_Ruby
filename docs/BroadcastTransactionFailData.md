# CryptoApis::BroadcastTransactionFailData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **product** | **String** | Represents the Crypto APIs 2.0 product which sends the callback. |  |
| **event** | **String** | Defines the specific event, for which a callback subscription is set. |  |
| **item** | [**BroadcastTransactionFailDataItem**](BroadcastTransactionFailDataItem.md) |  |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::BroadcastTransactionFailData.new(
  product: Blockchain Tools,
  event: BROADCAST_TRANSACTION_FAIL,
  item: null
)
```

