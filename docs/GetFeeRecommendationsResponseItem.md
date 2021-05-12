# OpenapiClient::GetFeeRecommendationsResponseItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **unit** | **String** | Defines the unit of the fee, e.g. BTC. |  |
| **fast** | **String** | Defines the fee priority as \&quot;FAST\&quot;. It works per byte, for UTXO-based protocols like Bitcoin, or per gas price, for account-based protocols like Ethereum. These are calculated based on Mempool. |  |
| **slow** | **String** | Defines the fee priority as \&quot;SLOW\&quot;. It works per byte, for UTXO-based protocols like Bitcoin, or per gas price, for account-based protocols like Ethereum. These are calculated based on Mempool. |  |
| **standard** | **String** | Defines the fee priority as \&quot;STANDARD\&quot;. It works per byte, for UTXO-based protocols like Bitcoin, or per gas price, for account-based protocols like Ethereum. These are calculated based on Mempool. |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::GetFeeRecommendationsResponseItem.new(
  unit: BTC,
  fast: 0.00000476,
  slow: 0.00000049,
  standard: 0.00000178
)
```

