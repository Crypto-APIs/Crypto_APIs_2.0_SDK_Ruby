# CryptoApis::ListWalletTransactionsRIFee

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **String** | Defines the fee for the transaction. |  |
| **converted_amount** | **String** | Defines the converted amount of the transaction&#39;s fee. |  |
| **exchange_rate_unit** | **String** | Defines the exchange rate for the transaction&#39;s unit. |  |
| **symbol** | **String** | Defines the unit of the transaction&#39;s fee. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::ListWalletTransactionsRIFee.new(
  amount: 0.00003,
  converted_amount: 1.50,
  exchange_rate_unit: USD,
  symbol: ETH
)
```

