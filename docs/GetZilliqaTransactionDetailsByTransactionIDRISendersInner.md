# CryptoApis::GetZilliqaTransactionDetailsByTransactionIDRISendersInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address** | **String** | Represents the hash of the address that provides the funds. |  |
| **amount** | **String** | Represents the total amount sent by this address including the fee. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::GetZilliqaTransactionDetailsByTransactionIDRISendersInner.new(
  address: zil1uhn7627k6xl5f03sq6grje5lk3gy0kf5aptz83,
  amount: 0
)
```

