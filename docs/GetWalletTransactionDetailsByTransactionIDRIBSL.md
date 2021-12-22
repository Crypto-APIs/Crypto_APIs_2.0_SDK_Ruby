# CryptoApis::GetWalletTransactionDetailsByTransactionIDRIBSL

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **locktime** | **Integer** | Represents the time at which a particular transaction can be added to the blockchain. |  |
| **size** | **Integer** | Represents the total size of this transaction. |  |
| **v_size** | **Integer** | Represents the virtual size of this transaction. |  |
| **version** | **Integer** | Represents the transaction version number. |  |
| **vin** | [**Array&lt;GetWalletTransactionDetailsByTransactionIDRIBSLVin&gt;**](GetWalletTransactionDetailsByTransactionIDRIBSLVin.md) | Object Array representation of transaction inputs |  |
| **vout** | [**Array&lt;GetTransactionDetailsByTransactionIDRIBSLVout&gt;**](GetTransactionDetailsByTransactionIDRIBSLVout.md) | Object Array representation of transaction outputs |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::GetWalletTransactionDetailsByTransactionIDRIBSL.new(
  locktime: 2,
  size: 223,
  v_size: 141,
  version: 1,
  vin: null,
  vout: null
)
```

