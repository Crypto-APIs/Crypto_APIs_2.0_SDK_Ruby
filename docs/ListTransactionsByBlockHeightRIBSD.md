# CryptoApis::ListTransactionsByBlockHeightRIBSD

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **locktime** | **Integer** | Represents the time at which a particular transaction can be added to the blockchain. |  |
| **size** | **Integer** | Represents the total size of this transaction. |  |
| **version** | **Integer** | Represents transaction version number. |  |
| **vin** | [**Array&lt;ListTransactionsByBlockHeightRIBSDVinInner&gt;**](ListTransactionsByBlockHeightRIBSDVinInner.md) | Represents the transaction inputs. |  |
| **vout** | [**Array&lt;ListTransactionsByBlockHeightRIBSDVoutInner&gt;**](ListTransactionsByBlockHeightRIBSDVoutInner.md) | Represents the transaction outputs. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::ListTransactionsByBlockHeightRIBSD.new(
  locktime: 0,
  size: 125,
  version: 1,
  vin: null,
  vout: null
)
```

