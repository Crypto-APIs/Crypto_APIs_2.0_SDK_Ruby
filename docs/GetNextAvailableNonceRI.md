# CryptoApis::GetNextAvailableNonceRI

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **next_available_nonce** | **Integer** | Represents the sequential running number for an address, starting from 0 for the first transaction. E.g., if the nonce of a transaction is 10, it would be the 11th transaction sent from the sender&#39;s address. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::GetNextAvailableNonceRI.new(
  next_available_nonce: 16
)
```

