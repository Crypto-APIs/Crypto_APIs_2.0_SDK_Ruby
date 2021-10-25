# CryptoApis::BroadcastTransactionSuccessData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **product** | **String** | Represents the Crypto APIs 2.0 product which sends the callback. |  |
| **event** | **String** | Defines the specific event, for which a callback subscription is set. |  |
| **item** | [**BroadcastTransactionSuccessDataItem**](BroadcastTransactionSuccessDataItem.md) |  |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::BroadcastTransactionSuccessData.new(
  product: BLOCKCHAIN_TOOLS,
  event: BROADCAST_TRANSACTION_SUCCESS,
  item: null
)
```

