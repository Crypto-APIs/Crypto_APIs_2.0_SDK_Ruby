# OpenapiClient::GetTransactionDetailsByTransactionIDResponseItemBlockchainSpecificEthereumClassicGasPrice

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **String** | Represents the price offered to the miner to purchase this amount of gas. |  |
| **unit** | **String** | Defines the unit of the gas price amount, e.g. BTC, ETH, XRP. |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::GetTransactionDetailsByTransactionIDResponseItemBlockchainSpecificEthereumClassicGasPrice.new(
  amount: 2994782934,
  unit: WEI
)
```

