# CryptoApis::GetXRPRippleAddressDetailsResponseItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **balance** | [**GetXRPRippleAddressDetailsResponseItemBalance**](GetXRPRippleAddressDetailsResponseItemBalance.md) |  |  |
| **incoming_transactions_count** | **Integer** | Defines the count of all confirmed incoming transactions from the address for coins. This applies to coins only, not to tokens transfers |  |
| **outgoing_transactions_count** | **Integer** | Defines the count of all confirmed outgoing transactions for coins. This applies to coins only, not to tokens transfers |  |
| **sequence** | **Integer** | Defines the transaction input&#39;s sequence as an integer, which is is used when transactions are replaced with newer versions before LockTime. |  |
| **transactions_count** | **Integer** | Represents the total number of all transactions as part of this block. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::GetXRPRippleAddressDetailsResponseItem.new(
  balance: null,
  incoming_transactions_count: 1,
  outgoing_transactions_count: 1,
  sequence: 25648975,
  transactions_count: 2
)
```

