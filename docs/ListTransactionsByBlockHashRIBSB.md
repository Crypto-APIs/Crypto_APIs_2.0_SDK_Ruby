# CryptoApis::ListTransactionsByBlockHashRIBSB

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **locktime** | **Integer** | Represents the locktime on the transaction on the specific blockchain, i.e. the blockheight at which the transaction is valid. |  |
| **size** | **Integer** | Represents the total size of this transaction. |  |
| **v_size** | **Integer** | Represents the virtual size of this transaction. |  |
| **version** | **Integer** | Represents the transaction version number. |  |
| **vin** | [**Array&lt;ListTransactionsByBlockHashRIBSBVin&gt;**](ListTransactionsByBlockHashRIBSBVin.md) | Represents the transaction inputs. |  |
| **vout** | [**Array&lt;GetTransactionDetailsByTransactionIDRIBSBVout&gt;**](GetTransactionDetailsByTransactionIDRIBSBVout.md) | Represents the transaction outputs. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::ListTransactionsByBlockHashRIBSB.new(
  locktime: 1781965,
  size: 373,
  v_size: 208,
  version: 1,
  vin: null,
  vout: null
)
```

