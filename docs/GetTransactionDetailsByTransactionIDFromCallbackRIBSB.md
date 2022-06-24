# CryptoApis::GetTransactionDetailsByTransactionIDFromCallbackRIBSB

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **locktime** | **Integer** | Represents the time at which a particular transaction can be added to the blockchain. |  |
| **size** | **Integer** | Represents the total size of this transaction. |  |
| **v_size** | **Integer** | Represents the virtual size of this transaction. |  |
| **version** | **Integer** | Represents the transaction version number. |  |
| **vin** | [**Array&lt;GetTransactionDetailsByTransactionIDFromCallbackRIBSBVinInner&gt;**](GetTransactionDetailsByTransactionIDFromCallbackRIBSBVinInner.md) | Represents the transaction inputs. |  |
| **vout** | [**Array&lt;GetTransactionDetailsByTransactionIDRIBSBVoutInner&gt;**](GetTransactionDetailsByTransactionIDRIBSBVoutInner.md) | Represents the transaction outputs. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::GetTransactionDetailsByTransactionIDFromCallbackRIBSB.new(
  locktime: 0,
  size: 223,
  v_size: 223,
  version: 2,
  vin: null,
  vout: null
)
```

