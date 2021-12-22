# CryptoApis::GetBlockDetailsByBlockHeightFromCallbackRIBS

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'crypto_apis'

CryptoApis::GetBlockDetailsByBlockHeightFromCallbackRIBS.openapi_one_of
# =>
# [
#   :'GetBlockDetailsByBlockHeightFromCallbackRIBSB',
#   :'GetBlockDetailsByBlockHeightFromCallbackRIBSBC',
#   :'GetBlockDetailsByBlockHeightFromCallbackRIBSBSC',
#   :'GetBlockDetailsByBlockHeightFromCallbackRIBSD',
#   :'GetBlockDetailsByBlockHeightFromCallbackRIBSD2',
#   :'GetBlockDetailsByBlockHeightFromCallbackRIBSE',
#   :'GetBlockDetailsByBlockHeightFromCallbackRIBSEC',
#   :'GetBlockDetailsByBlockHeightFromCallbackRIBSL',
#   :'GetBlockDetailsByBlockHeightFromCallbackRIBSX',
#   :'GetBlockDetailsByBlockHeightFromCallbackRIBSZ',
#   :'GetBlockDetailsByBlockHeightFromCallbackRIBSZ2'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'crypto_apis'

CryptoApis::GetBlockDetailsByBlockHeightFromCallbackRIBS.build(data)
# => #<GetBlockDetailsByBlockHeightFromCallbackRIBSB:0x00007fdd4aab02a0>

CryptoApis::GetBlockDetailsByBlockHeightFromCallbackRIBS.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `GetBlockDetailsByBlockHeightFromCallbackRIBSB`
- `GetBlockDetailsByBlockHeightFromCallbackRIBSBC`
- `GetBlockDetailsByBlockHeightFromCallbackRIBSBSC`
- `GetBlockDetailsByBlockHeightFromCallbackRIBSD`
- `GetBlockDetailsByBlockHeightFromCallbackRIBSD2`
- `GetBlockDetailsByBlockHeightFromCallbackRIBSE`
- `GetBlockDetailsByBlockHeightFromCallbackRIBSEC`
- `GetBlockDetailsByBlockHeightFromCallbackRIBSL`
- `GetBlockDetailsByBlockHeightFromCallbackRIBSX`
- `GetBlockDetailsByBlockHeightFromCallbackRIBSZ`
- `GetBlockDetailsByBlockHeightFromCallbackRIBSZ2`
- `nil` (if no type matches)

