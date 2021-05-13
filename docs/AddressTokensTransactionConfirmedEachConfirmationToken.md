# CryptoApis::AddressTokensTransactionConfirmedEachConfirmationToken

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'crypto_apis'

CryptoApis::AddressTokensTransactionConfirmedEachConfirmationToken.openapi_one_of
# =>
# [
#   :'AddressTokensTransactionConfirmedEachConfirmationEthereumerc20token',
#   :'AddressTokensTransactionConfirmedEachConfirmationEthereumerc721token',
#   :'AddressTokensTransactionConfirmedEachConfirmationOmnilayertoken'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'crypto_apis'

CryptoApis::AddressTokensTransactionConfirmedEachConfirmationToken.build(data)
# => #<AddressTokensTransactionConfirmedEachConfirmationEthereumerc20token:0x00007fdd4aab02a0>

CryptoApis::AddressTokensTransactionConfirmedEachConfirmationToken.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `AddressTokensTransactionConfirmedEachConfirmationEthereumerc20token`
- `AddressTokensTransactionConfirmedEachConfirmationEthereumerc721token`
- `AddressTokensTransactionConfirmedEachConfirmationOmnilayertoken`
- `nil` (if no type matches)

