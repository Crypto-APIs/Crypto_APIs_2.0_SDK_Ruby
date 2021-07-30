# CryptoApis::ListTransactionsByAddressRIBS

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'crypto_apis'

CryptoApis::ListTransactionsByAddressRIBS.openapi_one_of
# =>
# [
#   :'ListTransactionsByAddressRIBSB',
#   :'ListTransactionsByAddressRIBSBC',
#   :'ListTransactionsByAddressRIBSD',
#   :'ListTransactionsByAddressRIBSD2',
#   :'ListTransactionsByAddressRIBSE',
#   :'ListTransactionsByAddressRIBSEC',
#   :'ListTransactionsByAddressRIBSL'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'crypto_apis'

CryptoApis::ListTransactionsByAddressRIBS.build(data)
# => #<ListTransactionsByAddressRIBSB:0x00007fdd4aab02a0>

CryptoApis::ListTransactionsByAddressRIBS.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `ListTransactionsByAddressRIBSB`
- `ListTransactionsByAddressRIBSBC`
- `ListTransactionsByAddressRIBSD`
- `ListTransactionsByAddressRIBSD2`
- `ListTransactionsByAddressRIBSE`
- `ListTransactionsByAddressRIBSEC`
- `ListTransactionsByAddressRIBSL`
- `nil` (if no type matches)

