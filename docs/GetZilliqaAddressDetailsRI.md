# CryptoApis::GetZilliqaAddressDetailsRI

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **balance** | [**GetZilliqaAddressDetailsRIBalance**](GetZilliqaAddressDetailsRIBalance.md) |  |  |
| **incoming_transactions_count** | **Integer** | Defines the received transaction count to the address. |  |
| **outgoing_transactions_count** | **Integer** | Defines the sent transaction count from the address. |  |
| **transactions_count** | **Integer** | Defines the entire count of the transactions. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::GetZilliqaAddressDetailsRI.new(
  balance: null,
  incoming_transactions_count: 5,
  outgoing_transactions_count: 2,
  transactions_count: 5
)
```

