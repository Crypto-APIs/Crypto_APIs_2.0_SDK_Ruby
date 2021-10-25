# CryptoApis::ListAllUnconfirmedTransactionsRIBS

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'crypto_apis'

CryptoApis::ListAllUnconfirmedTransactionsRIBS.openapi_one_of
# =>
# [
#   :'ListAllUnconfirmedTransactionsRIBSB',
#   :'ListAllUnconfirmedTransactionsRIBSBC',
#   :'ListAllUnconfirmedTransactionsRIBSBSC',
#   :'ListAllUnconfirmedTransactionsRIBSD',
#   :'ListAllUnconfirmedTransactionsRIBSD2',
#   :'ListAllUnconfirmedTransactionsRIBSE',
#   :'ListAllUnconfirmedTransactionsRIBSEC',
#   :'ListAllUnconfirmedTransactionsRIBSL',
#   :'ListAllUnconfirmedTransactionsRIBSZ'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'crypto_apis'

CryptoApis::ListAllUnconfirmedTransactionsRIBS.build(data)
# => #<ListAllUnconfirmedTransactionsRIBSB:0x00007fdd4aab02a0>

CryptoApis::ListAllUnconfirmedTransactionsRIBS.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `ListAllUnconfirmedTransactionsRIBSB`
- `ListAllUnconfirmedTransactionsRIBSBC`
- `ListAllUnconfirmedTransactionsRIBSBSC`
- `ListAllUnconfirmedTransactionsRIBSD`
- `ListAllUnconfirmedTransactionsRIBSD2`
- `ListAllUnconfirmedTransactionsRIBSE`
- `ListAllUnconfirmedTransactionsRIBSEC`
- `ListAllUnconfirmedTransactionsRIBSL`
- `ListAllUnconfirmedTransactionsRIBSZ`
- `nil` (if no type matches)

