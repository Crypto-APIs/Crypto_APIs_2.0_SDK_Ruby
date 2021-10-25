# CryptoApis::ListUnspentTransactionOutputsByAddressRIFee

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **String** | String representation of the fee value |  |
| **unit** | **String** | Defines the specific unit of the fee. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::ListUnspentTransactionOutputsByAddressRIFee.new(
  amount: 0.00016932,
  unit: BTC
)
```

