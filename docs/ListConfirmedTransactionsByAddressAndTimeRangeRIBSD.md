# CryptoApis::ListConfirmedTransactionsByAddressAndTimeRangeRIBSD

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **locktime** | **Integer** | Represents the locktime on the transaction on the specific blockchain, i.e. the blockheight at which the transaction is valid. |  |
| **size** | **Integer** | Represents the total size of this transaction. |  |
| **version** | **Integer** | Represents the transaction&#39;s version number. |  |
| **vin** | [**Array&lt;ListConfirmedTransactionsByAddressRIBSDVinInner&gt;**](ListConfirmedTransactionsByAddressRIBSDVinInner.md) | Represents the transaction inputs. |  |
| **vout** | [**Array&lt;GetTransactionDetailsByTransactionIDRIBSDVoutInner&gt;**](GetTransactionDetailsByTransactionIDRIBSDVoutInner.md) | Represents the transaction outputs. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::ListConfirmedTransactionsByAddressAndTimeRangeRIBSD.new(
  locktime: 0,
  size: 266,
  version: 3,
  vin: null,
  vout: null
)
```

