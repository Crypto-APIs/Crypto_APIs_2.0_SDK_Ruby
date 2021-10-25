# CryptoApis::TransactionRequestBroadcastedData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **product** | **String** | Represents the Crypto APIs 2.0 product which sends the callback. |  |
| **event** | **String** | Defines the specific event, for which a callback subscription is set. |  |
| **item** | [**TransactionRequestBroadcastedDataItem**](TransactionRequestBroadcastedDataItem.md) |  |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::TransactionRequestBroadcastedData.new(
  product: WALLET_AS_A_SERVICE,
  event: TRANSACTION_REQUEST_BROADCASTED,
  item: null
)
```

