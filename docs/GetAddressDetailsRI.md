# CryptoApis::GetAddressDetailsRI

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **transactions_count** | **Integer** | Represents the total number of confirmed coins transactions for this address, both incoming and outgoing. Applies for coins only **and not** tokens transfers e.g. for Ethereum. &#x60;transactionsCount&#x60; could result as less than incoming and outgoing transactions put together (e.g. in Bitcoin), due to the fact that one and the same address could be in senders and receivers addresses. |  |
| **confirmed_balance** | [**GetAddressDetailsRIConfirmedBalance**](GetAddressDetailsRIConfirmedBalance.md) |  |  |
| **total_received** | [**GetAddressDetailsRITotalReceived**](GetAddressDetailsRITotalReceived.md) |  |  |
| **total_spent** | [**GetAddressDetailsRITotalSpent**](GetAddressDetailsRITotalSpent.md) |  |  |
| **incoming_transactions_count** | **Integer** | Defines the count of the incoming transactions. |  |
| **outgoing_transactions_count** | **Integer** | Defines the count of the outgoing transactions. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::GetAddressDetailsRI.new(
  transactions_count: 3,
  confirmed_balance: null,
  total_received: null,
  total_spent: null,
  incoming_transactions_count: 1,
  outgoing_transactions_count: 2
)
```

