# CryptoApis::ListSyncedAddressesRI

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address** | **String** | Represents the address. |  |
| **index** | **Integer** | Represents the index position of the transaction in the specific block. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::ListSyncedAddressesRI.new(
  address: 0x9e91eb3a35b96f0f0fe71f3c17fe8d29eb406b16,
  index: 1
)
```

