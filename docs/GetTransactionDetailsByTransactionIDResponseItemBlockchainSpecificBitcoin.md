# OpenapiClient::GetTransactionDetailsByTransactionIDResponseItemBlockchainSpecificBitcoin

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **locktime** | **Integer** | Represents the time at which a particular transaction can be added to the blockchain. |  |
| **size** | **Integer** | Represents the total size of this transaction. |  |
| **v_size** | **Integer** | Represents the virtual size of this transaction. |  |
| **version** | **Integer** | Represents the transaction version number. |  |
| **vin** | [**Array&lt;GetTransactionDetailsByTransactionIDResponseItemBlockchainSpecificBitcoinVin&gt;**](GetTransactionDetailsByTransactionIDResponseItemBlockchainSpecificBitcoinVin.md) | Represents the transaction inputs. |  |
| **vout** | [**Array&lt;GetTransactionDetailsByTransactionIDResponseItemBlockchainSpecificBitcoinVout&gt;**](GetTransactionDetailsByTransactionIDResponseItemBlockchainSpecificBitcoinVout.md) | Represents the transaction outputs. |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::GetTransactionDetailsByTransactionIDResponseItemBlockchainSpecificBitcoin.new(
  locktime: 1781965,
  size: 248,
  v_size: 166,
  version: 1,
  vin: null,
  vout: null
)
```

