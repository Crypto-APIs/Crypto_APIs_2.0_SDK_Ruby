# CryptoApis::AddressTokensTransactionUnconfirmedToken

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'crypto_apis'

CryptoApis::AddressTokensTransactionUnconfirmedToken.openapi_one_of
# =>
# [
#   :'AddressTokensTransactionUnconfirmedErc20',
#   :'AddressTokensTransactionUnconfirmedErc721',
#   :'AddressTokensTransactionUnconfirmedOmni'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'crypto_apis'

CryptoApis::AddressTokensTransactionUnconfirmedToken.build(data)
# => #<AddressTokensTransactionUnconfirmedErc20:0x00007fdd4aab02a0>

CryptoApis::AddressTokensTransactionUnconfirmedToken.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `AddressTokensTransactionUnconfirmedErc20`
- `AddressTokensTransactionUnconfirmedErc721`
- `AddressTokensTransactionUnconfirmedOmni`
- `nil` (if no type matches)

