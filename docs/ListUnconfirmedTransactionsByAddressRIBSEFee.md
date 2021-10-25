# CryptoApis::ListUnconfirmedTransactionsByAddressRIBSEFee

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **String** | String representation of the fee value |  |
| **unit** | **String** |  |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::ListUnconfirmedTransactionsByAddressRIBSEFee.new(
  amount: 0.0122,
  unit: ETH
)
```

