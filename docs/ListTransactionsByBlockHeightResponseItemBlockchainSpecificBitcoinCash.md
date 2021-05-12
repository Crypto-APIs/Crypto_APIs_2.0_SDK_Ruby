# OpenapiClient::ListTransactionsByBlockHeightResponseItemBlockchainSpecificBitcoinCash

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **locktime** | **Integer** | Represents the time at which a particular transaction can be added to the blockchain. |  |
| **size** | **Integer** | Represents the total size of this transaction. |  |
| **version** | **Integer** | Represents the total size of this transaction. |  |
| **vin** | [**Array&lt;ListTransactionsByBlockHashResponseItemBlockchainSpecificBitcoinCashVin&gt;**](ListTransactionsByBlockHashResponseItemBlockchainSpecificBitcoinCashVin.md) | Represents the transaction inputs. |  |
| **vout** | [**Array&lt;ListTransactionsByBlockHashResponseItemBlockchainSpecificBitcoinCashVout&gt;**](ListTransactionsByBlockHashResponseItemBlockchainSpecificBitcoinCashVout.md) | Represents the transaction outputs. |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ListTransactionsByBlockHeightResponseItemBlockchainSpecificBitcoinCash.new(
  locktime: 1781965,
  size: 248,
  version: 1,
  vin: null,
  vout: null
)
```

