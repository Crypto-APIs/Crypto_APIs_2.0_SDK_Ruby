# CryptoApis::ListTransactionsByBlockHashResponseItemBlockchainSpecificDogecoin

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **locktime** | **Integer** | Represents the time at which a particular transaction can be added to the blockchain. |  |
| **size** | **Integer** | Represents the total size of this transaction. |  |
| **version** | **Integer** | Represents transaction version number. |  |
| **vin** | [**Array&lt;ListTransactionsByBlockHashResponseItemBlockchainSpecificDogecoinVin&gt;**](ListTransactionsByBlockHashResponseItemBlockchainSpecificDogecoinVin.md) | Represents the transaction inputs. |  |
| **vout** | [**Array&lt;ListTransactionsByBlockHashResponseItemBlockchainSpecificDogecoinVout&gt;**](ListTransactionsByBlockHashResponseItemBlockchainSpecificDogecoinVout.md) | Represents the transaction outputs. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::ListTransactionsByBlockHashResponseItemBlockchainSpecificDogecoin.new(
  locktime: 1,
  size: 266,
  version: null,
  vin: null,
  vout: null
)
```

