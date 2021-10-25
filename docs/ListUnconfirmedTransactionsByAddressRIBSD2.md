# CryptoApis::ListUnconfirmedTransactionsByAddressRIBSD2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **locktime** | **Integer** | Represents the locktime on the transaction on the specific blockchain, i.e. the blockheight at which the transaction is valid. |  |
| **size** | **Integer** | Represents the total size of this transaction. |  |
| **version** | **Integer** | Represents the transaction&#39;s version number. |  |
| **vin** | [**Array&lt;ListUnconfirmedTransactionsByAddressRIBSD2Vin&gt;**](ListUnconfirmedTransactionsByAddressRIBSD2Vin.md) | Represents the transaction inputs. |  |
| **vout** | [**Array&lt;ListUnconfirmedTransactionsByAddressRIBSD2Vout&gt;**](ListUnconfirmedTransactionsByAddressRIBSD2Vout.md) | Represents the transaction outputs. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::ListUnconfirmedTransactionsByAddressRIBSD2.new(
  locktime: 0,
  size: 196,
  version: 3,
  vin: null,
  vout: null
)
```

