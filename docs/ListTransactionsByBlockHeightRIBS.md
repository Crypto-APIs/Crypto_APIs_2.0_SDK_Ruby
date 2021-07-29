# CryptoApis::ListTransactionsByBlockHeightRIBS

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'crypto_apis'

CryptoApis::ListTransactionsByBlockHeightRIBS.openapi_one_of
# =>
# [
#   :'ListTransactionsByBlockHeightRIBSB',
#   :'ListTransactionsByBlockHeightRIBSBC',
#   :'ListTransactionsByBlockHeightRIBSBSC',
#   :'ListTransactionsByBlockHeightRIBSD',
#   :'ListTransactionsByBlockHeightRIBSD2',
#   :'ListTransactionsByBlockHeightRIBSE',
#   :'ListTransactionsByBlockHeightRIBSEC',
#   :'ListTransactionsByBlockHeightRIBSL'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'crypto_apis'

CryptoApis::ListTransactionsByBlockHeightRIBS.build(data)
# => #<ListTransactionsByBlockHeightRIBSB:0x00007fdd4aab02a0>

CryptoApis::ListTransactionsByBlockHeightRIBS.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `ListTransactionsByBlockHeightRIBSB`
- `ListTransactionsByBlockHeightRIBSBC`
- `ListTransactionsByBlockHeightRIBSBSC`
- `ListTransactionsByBlockHeightRIBSD`
- `ListTransactionsByBlockHeightRIBSD2`
- `ListTransactionsByBlockHeightRIBSE`
- `ListTransactionsByBlockHeightRIBSEC`
- `ListTransactionsByBlockHeightRIBSL`
- `nil` (if no type matches)

