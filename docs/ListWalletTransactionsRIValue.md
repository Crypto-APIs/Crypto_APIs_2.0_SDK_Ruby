# CryptoApis::ListWalletTransactionsRIValue

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **String** | Defines the transaction amount. |  |
| **converted_amount** | **String** | Defines the converted amount of the transaction as a string. |  |
| **exchange_rate_unit** | **String** | Defines the exchange rate&#39;s unit. |  |
| **symbol** | **String** | Defines the unit of the transaction&#39;s amount. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::ListWalletTransactionsRIValue.new(
  amount: 0.001,
  converted_amount: 150,
  exchange_rate_unit: USD,
  symbol: ETH
)
```

