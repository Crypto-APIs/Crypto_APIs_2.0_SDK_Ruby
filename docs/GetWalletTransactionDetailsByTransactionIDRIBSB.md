# CryptoApis::GetWalletTransactionDetailsByTransactionIDRIBSB

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **locktime** | **Integer** | Represents the time at which a particular transaction can be added to the blockchain. |  |
| **size** | **Integer** | Represents the total size of this transaction. |  |
| **v_size** | **Integer** | Represents the virtual size of this transaction. |  |
| **version** | **Integer** | Represents the transaction version number. |  |
| **vin** | [**Array&lt;GetWalletTransactionDetailsByTransactionIDRIBSBVin&gt;**](GetWalletTransactionDetailsByTransactionIDRIBSBVin.md) | Object Array representation of transaction inputs |  |
| **vout** | [**Array&lt;GetWalletTransactionDetailsByTransactionIDRIBSBVout&gt;**](GetWalletTransactionDetailsByTransactionIDRIBSBVout.md) | Represents the transaction outputs. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::GetWalletTransactionDetailsByTransactionIDRIBSB.new(
  locktime: 0,
  size: 591,
  v_size: 347,
  version: 2,
  vin: null,
  vout: null
)
```

