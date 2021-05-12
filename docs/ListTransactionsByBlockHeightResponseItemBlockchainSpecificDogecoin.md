# OpenapiClient::ListTransactionsByBlockHeightResponseItemBlockchainSpecificDogecoin

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **locktime** | **Integer** | Represents the time at which a particular transaction can be added to the blockchain. |  |
| **size** | **Integer** | Represents the total size of this transaction. |  |
| **version** | **Integer** | Represents transaction version number. |  |
| **vin** | [**Array&lt;ListTransactionsByBlockHeightResponseItemBlockchainSpecificDogecoinVin&gt;**](ListTransactionsByBlockHeightResponseItemBlockchainSpecificDogecoinVin.md) | Represents the transaction inputs. |  |
| **vout** | [**Array&lt;ListTransactionsByBlockHashResponseItemBlockchainSpecificDogecoinVout&gt;**](ListTransactionsByBlockHashResponseItemBlockchainSpecificDogecoinVout.md) | Represents the transaction outputs. |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ListTransactionsByBlockHeightResponseItemBlockchainSpecificDogecoin.new(
  locktime: 1,
  size: 266,
  version: 2,
  vin: null,
  vout: null
)
```

