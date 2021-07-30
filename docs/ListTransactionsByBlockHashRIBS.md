# CryptoApis::ListTransactionsByBlockHashRIBS

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'crypto_apis'

CryptoApis::ListTransactionsByBlockHashRIBS.openapi_one_of
# =>
# [
#   :'ListTransactionsByBlockHashRIBSB',
#   :'ListTransactionsByBlockHashRIBSBC',
#   :'ListTransactionsByBlockHashRIBSD',
#   :'ListTransactionsByBlockHashRIBSD2',
#   :'ListTransactionsByBlockHashRIBSE',
#   :'ListTransactionsByBlockHashRIBSEC',
#   :'ListTransactionsByBlockHashRIBSL'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'crypto_apis'

CryptoApis::ListTransactionsByBlockHashRIBS.build(data)
# => #<ListTransactionsByBlockHashRIBSB:0x00007fdd4aab02a0>

CryptoApis::ListTransactionsByBlockHashRIBS.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `ListTransactionsByBlockHashRIBSB`
- `ListTransactionsByBlockHashRIBSBC`
- `ListTransactionsByBlockHashRIBSD`
- `ListTransactionsByBlockHashRIBSD2`
- `ListTransactionsByBlockHashRIBSE`
- `ListTransactionsByBlockHashRIBSEC`
- `ListTransactionsByBlockHashRIBSL`
- `nil` (if no type matches)

