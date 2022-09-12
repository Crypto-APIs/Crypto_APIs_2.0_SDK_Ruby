# CryptoApis::PrepareAUTXOBasedTransactionFromHDWalletXPubYPubZPubRBDataItemFee

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address** | **String** | Represents the fee address | [optional] |
| **exact_amount** | **String** | Representation of the exact amount value | [optional] |
| **priority** | **String** | Represents the fee priority | [optional] |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::PrepareAUTXOBasedTransactionFromHDWalletXPubYPubZPubRBDataItemFee.new(
  address: tb1q8wus03xdv3t6aknmsnpd0jmeu7dgh93j34pj5a,
  exact_amount: 0.00023,
  priority: standard
)
```

