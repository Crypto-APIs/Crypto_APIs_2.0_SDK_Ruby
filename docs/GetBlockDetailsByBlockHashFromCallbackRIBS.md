# CryptoApis::GetBlockDetailsByBlockHashFromCallbackRIBS

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'crypto_apis'

CryptoApis::GetBlockDetailsByBlockHashFromCallbackRIBS.openapi_one_of
# =>
# [
#   :'GetBlockDetailsByBlockHashFromCallbackRIBSB',
#   :'GetBlockDetailsByBlockHashFromCallbackRIBSBC',
#   :'GetBlockDetailsByBlockHashFromCallbackRIBSBSC',
#   :'GetBlockDetailsByBlockHashFromCallbackRIBSD',
#   :'GetBlockDetailsByBlockHashFromCallbackRIBSD2',
#   :'GetBlockDetailsByBlockHashFromCallbackRIBSE',
#   :'GetBlockDetailsByBlockHashFromCallbackRIBSEC',
#   :'GetBlockDetailsByBlockHashFromCallbackRIBSL',
#   :'GetBlockDetailsByBlockHashFromCallbackRIBSX',
#   :'GetBlockDetailsByBlockHashFromCallbackRIBSZ',
#   :'GetBlockDetailsByBlockHashFromCallbackRIBSZ2'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'crypto_apis'

CryptoApis::GetBlockDetailsByBlockHashFromCallbackRIBS.build(data)
# => #<GetBlockDetailsByBlockHashFromCallbackRIBSB:0x00007fdd4aab02a0>

CryptoApis::GetBlockDetailsByBlockHashFromCallbackRIBS.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `GetBlockDetailsByBlockHashFromCallbackRIBSB`
- `GetBlockDetailsByBlockHashFromCallbackRIBSBC`
- `GetBlockDetailsByBlockHashFromCallbackRIBSBSC`
- `GetBlockDetailsByBlockHashFromCallbackRIBSD`
- `GetBlockDetailsByBlockHashFromCallbackRIBSD2`
- `GetBlockDetailsByBlockHashFromCallbackRIBSE`
- `GetBlockDetailsByBlockHashFromCallbackRIBSEC`
- `GetBlockDetailsByBlockHashFromCallbackRIBSL`
- `GetBlockDetailsByBlockHashFromCallbackRIBSX`
- `GetBlockDetailsByBlockHashFromCallbackRIBSZ`
- `GetBlockDetailsByBlockHashFromCallbackRIBSZ2`
- `nil` (if no type matches)

