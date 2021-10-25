# CryptoApis::ListAllUnconfirmedTransactionsRIBSD

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **locktime** | **Integer** | Represents the locktime on the transaction on the specific blockchain, i.e. the blockheight at which the transaction is valid. |  |
| **size** | **Integer** | Represents the total size of this transaction. |  |
| **version** | **Integer** | Defines the version of the transaction. |  |
| **vin** | [**Array&lt;ListAllUnconfirmedTransactionsRIBSDVin&gt;**](ListAllUnconfirmedTransactionsRIBSDVin.md) | Represents the transaction inputs. |  |
| **vout** | [**Array&lt;GetTransactionDetailsByTransactionIDRIBSDVout&gt;**](GetTransactionDetailsByTransactionIDRIBSDVout.md) | Represents the transaction outputs. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::ListAllUnconfirmedTransactionsRIBSD.new(
  locktime: 0,
  size: 233,
  version: 2,
  vin: null,
  vout: null
)
```

