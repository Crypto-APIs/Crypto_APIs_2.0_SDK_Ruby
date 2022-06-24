# CryptoApis::ListConfirmedTransactionsByAddressRIBSD2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **locktime** | **Integer** | Represents the locktime on the transaction on the specific blockchain, i.e. the blockheight at which the transaction is valid. |  |
| **size** | **Integer** | Represents the total size of this transaction. |  |
| **version** | **Integer** | Represents the transaction&#39;s version number. |  |
| **vin** | [**Array&lt;ListConfirmedTransactionsByAddressRIBSD2VinInner&gt;**](ListConfirmedTransactionsByAddressRIBSD2VinInner.md) | Represents the transaction inputs. |  |
| **vout** | [**Array&lt;ListConfirmedTransactionsByAddressRIBSD2VoutInner&gt;**](ListConfirmedTransactionsByAddressRIBSD2VoutInner.md) | Represents the transaction outputs. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::ListConfirmedTransactionsByAddressRIBSD2.new(
  locktime: 0,
  size: 196,
  version: 3,
  vin: null,
  vout: null
)
```

