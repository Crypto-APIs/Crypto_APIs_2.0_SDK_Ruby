# CryptoApis::GetWalletTransactionDetailsByTransactionIDRIBSD2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **locktime** | **Integer** | Represents the time at which a particular transaction can be added to the blockchain. |  |
| **size** | **Integer** | Represents the total size of this transaction. |  |
| **version** | **Integer** | Represents the transaction version number. |  |
| **vin** | [**Array&lt;GetWalletTransactionDetailsByTransactionIDRIBSD2VinInner&gt;**](GetWalletTransactionDetailsByTransactionIDRIBSD2VinInner.md) | Object Array representation of transaction inputs |  |
| **vout** | [**Array&lt;GetTransactionDetailsByTransactionIDRIBSD2VoutInner&gt;**](GetTransactionDetailsByTransactionIDRIBSD2VoutInner.md) | Object Array representation of transaction outputs |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::GetWalletTransactionDetailsByTransactionIDRIBSD2.new(
  locktime: 0,
  size: 125,
  version: 1,
  vin: null,
  vout: null
)
```

