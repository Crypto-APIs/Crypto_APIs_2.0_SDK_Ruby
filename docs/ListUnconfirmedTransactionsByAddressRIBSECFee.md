# CryptoApis::ListUnconfirmedTransactionsByAddressRIBSECFee

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **String** | String representation of the fee value |  |
| **unit** | **String** |  |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::ListUnconfirmedTransactionsByAddressRIBSECFee.new(
  amount: 0.000105,
  unit: ETH
)
```

