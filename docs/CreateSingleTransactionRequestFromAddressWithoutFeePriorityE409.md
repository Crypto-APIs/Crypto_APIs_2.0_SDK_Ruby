# CryptoApis::CreateSingleTransactionRequestFromAddressWithoutFeePriorityE409

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'crypto_apis'

CryptoApis::CreateSingleTransactionRequestFromAddressWithoutFeePriorityE409.openapi_one_of
# =>
# [
#   :'InvalidData',
#   :'WalletAsAServiceAddressBalanceNotEnough',
#   :'WalletAsAServiceWalletBalanceNotEnough'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'crypto_apis'

CryptoApis::CreateSingleTransactionRequestFromAddressWithoutFeePriorityE409.build(data)
# => #<InvalidData:0x00007fdd4aab02a0>

CryptoApis::CreateSingleTransactionRequestFromAddressWithoutFeePriorityE409.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `InvalidData`
- `WalletAsAServiceAddressBalanceNotEnough`
- `WalletAsAServiceWalletBalanceNotEnough`
- `nil` (if no type matches)

