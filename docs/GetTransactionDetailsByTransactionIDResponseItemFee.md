# OpenapiClient::GetTransactionDetailsByTransactionIDResponseItemFee

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **String** | Defines the amount of the transaction fee. |  |
| **unit** | **String** | Defines the unit of the fee amount, e.g. BTC, ETH, XRP. |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::GetTransactionDetailsByTransactionIDResponseItemFee.new(
  amount: 0.00016932,
  unit: BTC
)
```

