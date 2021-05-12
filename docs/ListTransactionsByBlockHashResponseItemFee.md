# OpenapiClient::ListTransactionsByBlockHashResponseItemFee

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **String** | Represents the fee amount. |  |
| **unit** | **String** | Defines the unit of the fee amount, e.g. BTC, ETH, XRP. |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ListTransactionsByBlockHashResponseItemFee.new(
  amount: 0.00016932,
  unit: BTC
)
```

