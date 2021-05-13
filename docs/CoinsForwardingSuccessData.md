# CryptoApis::CoinsForwardingSuccessData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **product** | **String** | Represents the Crypto APIs 2.0 product which sends the callback. |  |
| **event** | **String** | Defines the specific event, for which a callback subscription is set. |  |
| **item** | [**CoinsForwardingSuccessDataItem**](CoinsForwardingSuccessDataItem.md) |  |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::CoinsForwardingSuccessData.new(
  product: Blockchain Automations,
  event: COINS_FORWARDING_SUCCESS,
  item: null
)
```

