# CryptoApis::GetTransactionDetailsByTransactionIDFromCallbackRIBSD2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **locktime** | **Integer** | Represents the time at which a particular transaction can be added to the blockchain. |  |
| **size** | **Integer** | Represents the total size of this transaction. |  |
| **version** | **Integer** | Represents transaction version number. |  |
| **vin** | [**Array&lt;GetTransactionDetailsByTransactionIDFromCallbackRIBSD2Vin&gt;**](GetTransactionDetailsByTransactionIDFromCallbackRIBSD2Vin.md) | Represents the transaction inputs. |  |
| **vout** | [**Array&lt;GetTransactionDetailsByTransactionIDFromCallbackRIBSD2Vout&gt;**](GetTransactionDetailsByTransactionIDFromCallbackRIBSD2Vout.md) | Represents the transaction outputs. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::GetTransactionDetailsByTransactionIDFromCallbackRIBSD2.new(
  locktime: 0,
  size: 266,
  version: 1,
  vin: null,
  vout: null
)
```

