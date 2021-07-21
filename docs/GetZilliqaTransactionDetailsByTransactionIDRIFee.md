# CryptoApis::GetZilliqaTransactionDetailsByTransactionIDRIFee

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **String** | Represents the amount of the transaction fee. |  |
| **unit** | **String** | Represents the unit of the transaction fee. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::GetZilliqaTransactionDetailsByTransactionIDRIFee.new(
  amount: 0.000235,
  unit: ZIL
)
```

