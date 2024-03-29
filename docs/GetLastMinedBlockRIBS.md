# CryptoApis::GetLastMinedBlockRIBS

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'crypto_apis'

CryptoApis::GetLastMinedBlockRIBS.openapi_one_of
# =>
# [
#   :'GetLastMinedBlockRIBSB',
#   :'GetLastMinedBlockRIBSBC',
#   :'GetLastMinedBlockRIBSBSC',
#   :'GetLastMinedBlockRIBSD',
#   :'GetLastMinedBlockRIBSD2',
#   :'GetLastMinedBlockRIBSE',
#   :'GetLastMinedBlockRIBSEC',
#   :'GetLastMinedBlockRIBSL',
#   :'GetLastMinedBlockRIBSZ',
#   :'GetLastMinedBlockRIBSZ2'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'crypto_apis'

CryptoApis::GetLastMinedBlockRIBS.build(data)
# => #<GetLastMinedBlockRIBSB:0x00007fdd4aab02a0>

CryptoApis::GetLastMinedBlockRIBS.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `GetLastMinedBlockRIBSB`
- `GetLastMinedBlockRIBSBC`
- `GetLastMinedBlockRIBSBSC`
- `GetLastMinedBlockRIBSD`
- `GetLastMinedBlockRIBSD2`
- `GetLastMinedBlockRIBSE`
- `GetLastMinedBlockRIBSEC`
- `GetLastMinedBlockRIBSL`
- `GetLastMinedBlockRIBSZ`
- `GetLastMinedBlockRIBSZ2`
- `nil` (if no type matches)

