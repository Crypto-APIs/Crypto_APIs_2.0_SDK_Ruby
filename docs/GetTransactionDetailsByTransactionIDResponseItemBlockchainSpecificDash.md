# OpenapiClient::GetTransactionDetailsByTransactionIDResponseItemBlockchainSpecificDash

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **locktime** | **Integer** | Represents the time at which a particular transaction can be added to the blockchain. |  |
| **size** | **Integer** | Represents the total size of this transaction. |  |
| **version** | **Integer** | Represents transaction version number. |  |
| **vin** | [**Array&lt;GetTransactionDetailsByTransactionIDResponseItemBlockchainSpecificDashVin&gt;**](GetTransactionDetailsByTransactionIDResponseItemBlockchainSpecificDashVin.md) | Represents the transaction inputs. |  |
| **vout** | [**Array&lt;GetTransactionDetailsByTransactionIDResponseItemBlockchainSpecificDashVout&gt;**](GetTransactionDetailsByTransactionIDResponseItemBlockchainSpecificDashVout.md) | Represents the transaction outputs. |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::GetTransactionDetailsByTransactionIDResponseItemBlockchainSpecificDash.new(
  locktime: 0,
  size: 125,
  version: 1,
  vin: null,
  vout: null
)
```

