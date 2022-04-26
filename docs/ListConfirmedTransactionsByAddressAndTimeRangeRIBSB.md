# CryptoApis::ListConfirmedTransactionsByAddressAndTimeRangeRIBSB

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **locktime** | **Integer** | Represents the locktime on the transaction on the specific blockchain, i.e. the blockheight at which the transaction is valid. |  |
| **size** | **Integer** | Represents the total size of this transaction. |  |
| **v_size** | **Integer** | Defines the transaction&#39;s virtual size. |  |
| **version** | **Integer** | Defines the version of the transaction. |  |
| **vin** | [**Array&lt;ListConfirmedTransactionsByAddressRIBSBVin&gt;**](ListConfirmedTransactionsByAddressRIBSBVin.md) | Represents the transaction inputs. |  |
| **vout** | [**Array&lt;ListConfirmedTransactionsByAddressRIBSBVout&gt;**](ListConfirmedTransactionsByAddressRIBSBVout.md) | Represents the transaction outputs. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::ListConfirmedTransactionsByAddressAndTimeRangeRIBSB.new(
  locktime: 1781965,
  size: 125,
  v_size: 166,
  version: 2,
  vin: null,
  vout: null
)
```

