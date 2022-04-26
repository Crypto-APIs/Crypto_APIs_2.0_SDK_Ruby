# CryptoApis::ListTokensTransfersByTransactionHashRITransactionFee

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **String** | Represents the total fee of a transaction which includes token transfers. |  |
| **unit** | **String** | Represents the unit of the fee. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::ListTokensTransfersByTransactionHashRITransactionFee.new(
  amount: 0.0000051873,
  unit: ETH
)
```

