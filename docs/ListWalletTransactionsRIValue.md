# CryptoApis::ListWalletTransactionsRIValue

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **String** | Defines the transaction amount. |  |
| **converted_amount** | **String** | Defines the converted amount of the transaction as a string. |  |
| **exchange_rate_unit** | **String** | Defines the exchange rate&#39;s unit. |  |
| **symbol** | **String** | Defines the unit of the transaction&#39;s amount. |  |
| **token_identifier** | **String** | Defines the token&#39;s identifier of the transaction&#39;s amount. | [optional] |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::ListWalletTransactionsRIValue.new(
  amount: 0.001,
  converted_amount: 150,
  exchange_rate_unit: USD,
  symbol: ETH,
  token_identifier: 0x20fe562d797a42dcb3399062ae9546cd06f63280
)
```

