# CryptoApis::ListTransactionsByBlockHashRIBSD

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **locktime** | **Integer** | Represents the time at which a particular transaction can be added to the blockchain. |  |
| **size** | **Integer** | Represents the total size of this transaction. |  |
| **version** | **Integer** | Represents transaction version number. |  |
| **vin** | [**Array&lt;ListTransactionsByBlockHashRIBSDVinInner&gt;**](ListTransactionsByBlockHashRIBSDVinInner.md) | Represents the transaction inputs. |  |
| **vout** | [**Array&lt;ListTransactionsByBlockHashRIBSDVoutInner&gt;**](ListTransactionsByBlockHashRIBSDVoutInner.md) | Represents the transaction outputs. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::ListTransactionsByBlockHashRIBSD.new(
  locktime: 1,
  size: 266,
  version: null,
  vin: null,
  vout: null
)
```

