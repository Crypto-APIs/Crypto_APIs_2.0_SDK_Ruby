# CryptoApis::GetWalletTransactionDetailsByTransactionIDRIBSD

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **locktime** | **Integer** | Represents the time at which a particular transaction can be added to the blockchain. |  |
| **size** | **Integer** | Represents the total size of this transaction. |  |
| **version** | **Integer** | Represents the transaction version number. |  |
| **vin** | [**Array&lt;GetWalletTransactionDetailsByTransactionIDRIBSDVinInner&gt;**](GetWalletTransactionDetailsByTransactionIDRIBSDVinInner.md) | Object Array representation of transaction inputs |  |
| **vout** | [**Array&lt;GetTransactionDetailsByTransactionIDRIBSDVoutInner&gt;**](GetTransactionDetailsByTransactionIDRIBSDVoutInner.md) | Object Array representation of transaction outputs |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::GetWalletTransactionDetailsByTransactionIDRIBSD.new(
  locktime: 0,
  size: 266,
  version: 1,
  vin: null,
  vout: null
)
```

