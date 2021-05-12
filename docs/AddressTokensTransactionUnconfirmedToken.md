# OpenapiClient::AddressTokensTransactionUnconfirmedToken

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'openapi_client'

OpenapiClient::AddressTokensTransactionUnconfirmedToken.openapi_one_of
# =>
# [
#   :'AddressTokensTransactionUnconfirmedEthereumerc20token',
#   :'AddressTokensTransactionUnconfirmedEthereumerc721token',
#   :'AddressTokensTransactionUnconfirmedOmnilayertoken'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'openapi_client'

OpenapiClient::AddressTokensTransactionUnconfirmedToken.build(data)
# => #<AddressTokensTransactionUnconfirmedEthereumerc20token:0x00007fdd4aab02a0>

OpenapiClient::AddressTokensTransactionUnconfirmedToken.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `AddressTokensTransactionUnconfirmedEthereumerc20token`
- `AddressTokensTransactionUnconfirmedEthereumerc721token`
- `AddressTokensTransactionUnconfirmedOmnilayertoken`
- `nil` (if no type matches)

