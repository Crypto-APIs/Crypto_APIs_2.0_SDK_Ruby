# CryptoApis::GetTransactionDetailsByTransactionIDFromCallbackRIBSBC

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **locktime** | **Integer** | Represents the time at which a particular transaction can be added to the blockchain. |  |
| **size** | **Integer** | Represents the total size of this transaction. |  |
| **version** | **Integer** | Represents transaction version number. |  |
| **vin** | [**Array&lt;GetTransactionDetailsByTransactionIDRIBSBCVinInner&gt;**](GetTransactionDetailsByTransactionIDRIBSBCVinInner.md) | Represents the transaction inputs. |  |
| **vout** | [**Array&lt;GetTransactionDetailsByTransactionIDRIBSBCVoutInner&gt;**](GetTransactionDetailsByTransactionIDRIBSBCVoutInner.md) | Represents the transaction outputs. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::GetTransactionDetailsByTransactionIDFromCallbackRIBSBC.new(
  locktime: 1781965,
  size: 248,
  version: 1,
  vin: null,
  vout: null
)
```

