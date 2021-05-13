# CryptoApis::ListTransactionsByBlockHashRIBSD2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **locktime** | **Integer** | Represents the time at which a particular transaction can be added to the blockchain. |  |
| **size** | **Integer** | Represents the total size of this transaction. |  |
| **version** | **Integer** | Represents transaction version number. |  |
| **vin** | [**Array&lt;ListTransactionsByBlockHashRIBSD2Vin&gt;**](ListTransactionsByBlockHashRIBSD2Vin.md) | Represents the transaction inputs. |  |
| **vout** | [**Array&lt;ListTransactionsByBlockHashRIBSD2Vout&gt;**](ListTransactionsByBlockHashRIBSD2Vout.md) | Represents the transaction outputs. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::ListTransactionsByBlockHashRIBSD2.new(
  locktime: 0,
  size: 125,
  version: 1,
  vin: null,
  vout: null
)
```

