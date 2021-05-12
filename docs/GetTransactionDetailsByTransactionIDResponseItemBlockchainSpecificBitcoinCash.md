# OpenapiClient::GetTransactionDetailsByTransactionIDResponseItemBlockchainSpecificBitcoinCash

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **locktime** | **Integer** | Represents the time at which a particular transaction can be added to the blockchain. |  |
| **size** | **Integer** | Represents the total size of this transaction. |  |
| **version** | **Integer** | Represents transaction version number. |  |
| **vin** | [**Array&lt;GetTransactionDetailsByTransactionIDResponseItemBlockchainSpecificBitcoinCashVin&gt;**](GetTransactionDetailsByTransactionIDResponseItemBlockchainSpecificBitcoinCashVin.md) | Represents the transaction inputs. |  |
| **vout** | [**Array&lt;GetTransactionDetailsByTransactionIDResponseItemBlockchainSpecificBitcoinCashVout&gt;**](GetTransactionDetailsByTransactionIDResponseItemBlockchainSpecificBitcoinCashVout.md) | Represents the transaction outputs. |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::GetTransactionDetailsByTransactionIDResponseItemBlockchainSpecificBitcoinCash.new(
  locktime: 1781965,
  size: 248,
  version: 1,
  vin: null,
  vout: null
)
```

