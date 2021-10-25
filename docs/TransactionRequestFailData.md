# CryptoApis::TransactionRequestFailData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **product** | **String** | Represents the Crypto APIs 2.0 product which sends the callback. |  |
| **event** | **String** | Defines the specific event, for which a callback subscription is set. |  |
| **item** | [**TransactionRequestFailDataItem**](TransactionRequestFailDataItem.md) |  |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::TransactionRequestFailData.new(
  product: WALLET_AS_A_SERVICE,
  event: TRANSACTION_REQUEST_FAIL,
  item: null
)
```

