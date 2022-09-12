# CryptoApis::PrepareAnAccountBasedTransactionFromHDWalletXPubYPubZPubRBDataItemFee

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **exact_amount** | **String** | Representation of the exact amount value | [optional] |
| **priority** | **String** | Represents the fee priority | [optional] |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::PrepareAnAccountBasedTransactionFromHDWalletXPubYPubZPubRBDataItemFee.new(
  exact_amount: 0.00045,
  priority: standard
)
```

