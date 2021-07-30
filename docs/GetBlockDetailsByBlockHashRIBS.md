# CryptoApis::GetBlockDetailsByBlockHashRIBS

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'crypto_apis'

CryptoApis::GetBlockDetailsByBlockHashRIBS.openapi_one_of
# =>
# [
#   :'GetBlockDetailsByBlockHashRIBSB',
#   :'GetBlockDetailsByBlockHashRIBSBC',
#   :'GetBlockDetailsByBlockHashRIBSD',
#   :'GetBlockDetailsByBlockHashRIBSD2',
#   :'GetBlockDetailsByBlockHashRIBSE',
#   :'GetBlockDetailsByBlockHashRIBSEC',
#   :'GetBlockDetailsByBlockHashRIBSL'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'crypto_apis'

CryptoApis::GetBlockDetailsByBlockHashRIBS.build(data)
# => #<GetBlockDetailsByBlockHashRIBSB:0x00007fdd4aab02a0>

CryptoApis::GetBlockDetailsByBlockHashRIBS.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `GetBlockDetailsByBlockHashRIBSB`
- `GetBlockDetailsByBlockHashRIBSBC`
- `GetBlockDetailsByBlockHashRIBSD`
- `GetBlockDetailsByBlockHashRIBSD2`
- `GetBlockDetailsByBlockHashRIBSE`
- `GetBlockDetailsByBlockHashRIBSEC`
- `GetBlockDetailsByBlockHashRIBSL`
- `nil` (if no type matches)

