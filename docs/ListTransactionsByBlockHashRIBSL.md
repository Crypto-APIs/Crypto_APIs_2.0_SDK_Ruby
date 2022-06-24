# CryptoApis::ListTransactionsByBlockHashRIBSL

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **locktime** | **Integer** | Represents the time at which a particular transaction can be added to the blockchain. |  |
| **size** | **Integer** | Represents the total size of this transaction. |  |
| **v_size** | **Integer** | Represents the virtual size of this transaction. |  |
| **version** | **Integer** | Represents transaction version number. |  |
| **vin** | [**Array&lt;ListTransactionsByBlockHashRIBSLVinInner&gt;**](ListTransactionsByBlockHashRIBSLVinInner.md) | Represents the transaction inputs. |  |
| **vout** | [**Array&lt;ListTransactionsByBlockHashRIBSLVoutInner&gt;**](ListTransactionsByBlockHashRIBSLVoutInner.md) | Represents the transaction outputs. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::ListTransactionsByBlockHashRIBSL.new(
  locktime: 2,
  size: 223,
  v_size: 141,
  version: 2,
  vin: null,
  vout: null
)
```

