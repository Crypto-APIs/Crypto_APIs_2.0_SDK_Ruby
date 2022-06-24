# CryptoApis::ListWalletTransactionsRIInternalTransactionsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **String** | Defines the specific amount of the transaction. |  |
| **converted_amount** | **String** | Represents the converted amount. |  |
| **exchange_rate_unit** | **String** | Defines the base asset symbol to get a rate for. |  |
| **operation_id** | **String** | Represents the unique internal transaction ID in regards to the parent transaction (type trace address). |  |
| **recipient** | **String** | Represents the recipient address with the respective amount. |  |
| **sender** | **String** | Represents the sender address with the respective amount. |  |
| **symbol** | **String** | Represents the unique unit symbol. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::ListWalletTransactionsRIInternalTransactionsInner.new(
  amount: 0.001,
  converted_amount: 4.30365936483792,
  exchange_rate_unit: USD,
  operation_id: call_0,
  recipient: 0x07344b7649c5ff096b0317957d9a208931d04d5e,
  sender: 0x4b8ec9e58a8b08f3803f84fb52d0a50e84444592,
  symbol: ETH
)
```

