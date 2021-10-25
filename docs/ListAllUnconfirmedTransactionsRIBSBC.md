# CryptoApis::ListAllUnconfirmedTransactionsRIBSBC

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **locktime** | **Integer** | Represents the locktime on the transaction on the specific blockchain, i.e. the blockheight at which the transaction is valid. |  |
| **size** | **Integer** | Represents the total size of this transaction. |  |
| **version** | **Integer** | Represents the transaction&#39;s version number. |  |
| **vin** | [**Array&lt;ListAllUnconfirmedTransactionsRIBSBCVin&gt;**](ListAllUnconfirmedTransactionsRIBSBCVin.md) | Represents the transaction inputs. |  |
| **vout** | [**Array&lt;ListAllUnconfirmedTransactionsRIBSBCVout&gt;**](ListAllUnconfirmedTransactionsRIBSBCVout.md) | Object Array representation of transaction outputs |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::ListAllUnconfirmedTransactionsRIBSBC.new(
  locktime: 1781965,
  size: 123,
  version: 1,
  vin: null,
  vout: null
)
```

