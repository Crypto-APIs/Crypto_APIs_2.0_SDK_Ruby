# CryptoApis::GetWalletTransactionDetailsByTransactionIDRIFee

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **String** | When isConfirmed is True - Defines the amount of the transaction fee  When isConfirmed is False - For ETH-based blockchains this attribute represents the max fee value. |  |
| **unit** | **String** | Represents the unit of the fee. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::GetWalletTransactionDetailsByTransactionIDRIFee.new(
  amount: 0.00003812,
  unit: BTC
)
```

