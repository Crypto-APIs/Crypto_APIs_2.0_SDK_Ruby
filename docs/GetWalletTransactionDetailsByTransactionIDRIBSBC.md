# CryptoApis::GetWalletTransactionDetailsByTransactionIDRIBSBC

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **locktime** | **Integer** | Represents the time at which a particular transaction can be added to the blockchain. |  |
| **size** | **Integer** | Represents the total size of this transaction. |  |
| **version** | **Integer** | Represents the transaction version number. |  |
| **vin** | [**Array&lt;GetWalletTransactionDetailsByTransactionIDRIBSBCVinInner&gt;**](GetWalletTransactionDetailsByTransactionIDRIBSBCVinInner.md) | Object Array representation of transaction inputs |  |
| **vout** | [**Array&lt;GetWalletTransactionDetailsByTransactionIDRIBSBCVoutInner&gt;**](GetWalletTransactionDetailsByTransactionIDRIBSBCVoutInner.md) | Object Array representation of transaction outputs |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::GetWalletTransactionDetailsByTransactionIDRIBSBC.new(
  locktime: 1781965,
  size: 248,
  version: 1,
  vin: null,
  vout: null
)
```

