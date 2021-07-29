# CryptoApis::ListTransactionsByBlockHeightRIBSBSCGasPrice

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **String** | Numeric representation of the transaction gas price |  |
| **unit** | **String** |  |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::ListTransactionsByBlockHeightRIBSBSCGasPrice.new(
  amount: 17000000000,
  unit: BNB
)
```

