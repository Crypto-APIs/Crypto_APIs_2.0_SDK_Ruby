# CryptoApis::ListUnconfirmedTransactionsByAddressRIBSD

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **locktime** | **Integer** | Represents the locktime on the transaction on the specific blockchain, i.e. the blockheight at which the transaction is valid. |  |
| **size** | **Integer** | Represents the total size of this transaction. |  |
| **version** | **Integer** | Numeric representation of the transaction version |  |
| **vin** | [**Array&lt;ListUnconfirmedTransactionsByAddressRIBSDVinInner&gt;**](ListUnconfirmedTransactionsByAddressRIBSDVinInner.md) | Represents the transaction inputs. |  |
| **vout** | [**Array&lt;GetTransactionDetailsByTransactionIDRIBSDVoutInner&gt;**](GetTransactionDetailsByTransactionIDRIBSDVoutInner.md) | Represents the transaction outputs. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::ListUnconfirmedTransactionsByAddressRIBSD.new(
  locktime: 0,
  size: 233,
  version: 2,
  vin: null,
  vout: null
)
```

