# CryptoApis::TransactionMinedData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **product** | **String** | Represents the Crypto APIs 2.0 product which sends the callback. |  |
| **event** | **String** | Defines the specific event, for which a callback subscription is set. |  |
| **item** | [**TransactionMinedDataItem**](TransactionMinedDataItem.md) |  |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::TransactionMinedData.new(
  product: BLOCKCHAIN_EVENTS,
  event: TRANSACTION_MINED,
  item: null
)
```

