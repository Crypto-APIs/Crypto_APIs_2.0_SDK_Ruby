# OpenapiClient::ListTransactionsByBlockHashResponseItemSenders

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address** | **String** | Represents the address which sends this transaction. In UTXO-based protocols like Bitcoin there could be several senders while in account-based protocols like Ethereum there is always only one sender. |  |
| **amount** | **String** | Represents the amount sent by this address. |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ListTransactionsByBlockHashResponseItemSenders.new(
  address: n3NFmt8ibu1FnUqxexrVg4psg88Sx2PMsv,
  amount: 0.00572702
)
```

