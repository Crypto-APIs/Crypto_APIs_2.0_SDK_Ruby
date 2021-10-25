# CryptoApis::CoinsForwardingFailData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **product** | **String** | Represents the Crypto APIs 2.0 product which sends the callback. |  |
| **event** | **String** | Defines the specific event, for which a callback subscription is set. |  |
| **item** | [**CoinsForwardingFailDataItem**](CoinsForwardingFailDataItem.md) |  |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::CoinsForwardingFailData.new(
  product: BLOCKCHAIN_AUTOMATIONS,
  event: COINS_FORWARDING_FAIL,
  item: null
)
```

