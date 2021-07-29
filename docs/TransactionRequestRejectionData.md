# CryptoApis::TransactionRequestRejectionData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **product** | **String** | Represents the Crypto APIs 2.0 product which sends the callback. |  |
| **event** | **String** | Defines the specific event, for which a callback subscription is set. |  |
| **item** | [**TransactionRequestRejectionDataItem**](TransactionRequestRejectionDataItem.md) |  |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::TransactionRequestRejectionData.new(
  product: Wallet As A Service,
  event: TRANSACTION_REQUEST_REJECTION,
  item: null
)
```

