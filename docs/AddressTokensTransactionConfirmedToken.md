# CryptoApis::AddressTokensTransactionConfirmedToken

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'crypto_apis'

CryptoApis::AddressTokensTransactionConfirmedToken.openapi_one_of
# =>
# [
#   :'AddressTokensTransactionConfirmedEthereumerc20token',
#   :'AddressTokensTransactionConfirmedEthereumerc721token',
#   :'AddressTokensTransactionConfirmedOmnilayertoken'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'crypto_apis'

CryptoApis::AddressTokensTransactionConfirmedToken.build(data)
# => #<AddressTokensTransactionConfirmedEthereumerc20token:0x00007fdd4aab02a0>

CryptoApis::AddressTokensTransactionConfirmedToken.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `AddressTokensTransactionConfirmedEthereumerc20token`
- `AddressTokensTransactionConfirmedEthereumerc721token`
- `AddressTokensTransactionConfirmedOmnilayertoken`
- `nil` (if no type matches)

