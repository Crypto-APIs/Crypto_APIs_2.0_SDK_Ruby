# CryptoApis::GetTransactionDetailsByTransactionIDRIFee

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **String** | When isConfirmed is True - Defines the amount of the transaction fee  When isConfirmed is False - For ETH-based blockchains this attribute represents the max fee value. |  |
| **unit** | **String** | Defines the fee unit. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::GetTransactionDetailsByTransactionIDRIFee.new(
  amount: 0.00016932,
  unit: ZEC
)
```

