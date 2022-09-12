# CryptoApis::GetAddressDetailsFromCallbackRI

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **incoming_transactions_count** | **Integer** | Defines the received transaction count to the address. |  |
| **outgoing_transactions_count** | **Integer** | Defines the sent transaction count from the address. |  |
| **transactions_count** | **Integer** | Represents the total number of confirmed coins transactions for this address, both incoming and outgoing. Applies for coins only and not tokens transfers e.g. for Ethereum. transactionsCount could result as less than incoming and outgoing transactions put together (e.g. in Bitcoin), due to the fact that one and the same address could be in senders and receivers addresses. |  |
| **confirmed_balance** | [**GetAddressDetailsFromCallbackRIConfirmedBalance**](GetAddressDetailsFromCallbackRIConfirmedBalance.md) |  |  |
| **total_received** | [**GetAddressDetailsFromCallbackRITotalReceived**](GetAddressDetailsFromCallbackRITotalReceived.md) |  |  |
| **total_spent** | [**GetAddressDetailsFromCallbackRITotalSpent**](GetAddressDetailsFromCallbackRITotalSpent.md) |  |  |
| **sequence** | **Integer** | Defines the transaction input&#39;s sequence as an integer, which is is used when transactions are replaced with newer versions before LockTime. | [optional] |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::GetAddressDetailsFromCallbackRI.new(
  incoming_transactions_count: 7,
  outgoing_transactions_count: 5,
  transactions_count: 12,
  confirmed_balance: null,
  total_received: null,
  total_spent: null,
  sequence: 25648975
)
```

