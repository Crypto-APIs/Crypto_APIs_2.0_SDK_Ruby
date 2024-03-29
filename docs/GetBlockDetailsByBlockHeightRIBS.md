# CryptoApis::GetBlockDetailsByBlockHeightRIBS

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'crypto_apis'

CryptoApis::GetBlockDetailsByBlockHeightRIBS.openapi_one_of
# =>
# [
#   :'GetBlockDetailsByBlockHeightRIBSB',
#   :'GetBlockDetailsByBlockHeightRIBSBC',
#   :'GetBlockDetailsByBlockHeightRIBSBSC',
#   :'GetBlockDetailsByBlockHeightRIBSD',
#   :'GetBlockDetailsByBlockHeightRIBSD2',
#   :'GetBlockDetailsByBlockHeightRIBSE',
#   :'GetBlockDetailsByBlockHeightRIBSEC',
#   :'GetBlockDetailsByBlockHeightRIBSL',
#   :'GetBlockDetailsByBlockHeightRIBSZ',
#   :'GetBlockDetailsByBlockHeightRIBSZ2'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'crypto_apis'

CryptoApis::GetBlockDetailsByBlockHeightRIBS.build(data)
# => #<GetBlockDetailsByBlockHeightRIBSB:0x00007fdd4aab02a0>

CryptoApis::GetBlockDetailsByBlockHeightRIBS.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `GetBlockDetailsByBlockHeightRIBSB`
- `GetBlockDetailsByBlockHeightRIBSBC`
- `GetBlockDetailsByBlockHeightRIBSBSC`
- `GetBlockDetailsByBlockHeightRIBSD`
- `GetBlockDetailsByBlockHeightRIBSD2`
- `GetBlockDetailsByBlockHeightRIBSE`
- `GetBlockDetailsByBlockHeightRIBSEC`
- `GetBlockDetailsByBlockHeightRIBSL`
- `GetBlockDetailsByBlockHeightRIBSZ`
- `GetBlockDetailsByBlockHeightRIBSZ2`
- `nil` (if no type matches)

