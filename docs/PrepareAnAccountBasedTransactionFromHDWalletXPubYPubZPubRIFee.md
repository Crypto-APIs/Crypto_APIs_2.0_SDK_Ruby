# CryptoApis::PrepareAnAccountBasedTransactionFromHDWalletXPubYPubZPubRIFee

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **gas_limit** | **String** | Represents the amount of gas used by this specific transaction alone. |  |
| **gas_price** | **String** | Represents the price offered to the miner to purchase this amount of gas. |  |
| **max_fee_per_gas** | **String** | Representation of the max fee per gas value |  |
| **max_priority_fee_per_gas** | **String** | Rrepresentation of the max priority fee per gas value |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::PrepareAnAccountBasedTransactionFromHDWalletXPubYPubZPubRIFee.new(
  gas_limit: 552020,
  gas_price: 2500000007,
  max_fee_per_gas: 2000000008,
  max_priority_fee_per_gas: 2000000000
)
```

