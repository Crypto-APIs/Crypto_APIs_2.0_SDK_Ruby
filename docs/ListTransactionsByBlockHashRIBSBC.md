# CryptoApis::ListTransactionsByBlockHashRIBSBC

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **locktime** | **Integer** | Represents the time at which a particular transaction can be added to the blockchain. |  |
| **size** | **Integer** | Represents the total size of this transaction. |  |
| **version** | **Integer** | Represents transaction version number. |  |
| **vin** | [**Array&lt;ListTransactionsByBlockHashRIBSBCVin&gt;**](ListTransactionsByBlockHashRIBSBCVin.md) | Represents the transaction inputs. |  |
| **vout** | [**Array&lt;ListTransactionsByBlockHashRIBSBCVout&gt;**](ListTransactionsByBlockHashRIBSBCVout.md) | Represents the transaction outputs. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::ListTransactionsByBlockHashRIBSBC.new(
  locktime: 1781965,
  size: 248,
  version: 1,
  vin: null,
  vout: null
)
```

