# CryptoApis::GetLatestMinedBlockRIBS

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'crypto_apis'

CryptoApis::GetLatestMinedBlockRIBS.openapi_one_of
# =>
# [
#   :'GetLatestMinedBlockRIBSB',
#   :'GetLatestMinedBlockRIBSBC',
#   :'GetLatestMinedBlockRIBSD',
#   :'GetLatestMinedBlockRIBSD2',
#   :'GetLatestMinedBlockRIBSE',
#   :'GetLatestMinedBlockRIBSEC',
#   :'GetLatestMinedBlockRIBSL'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'crypto_apis'

CryptoApis::GetLatestMinedBlockRIBS.build(data)
# => #<GetLatestMinedBlockRIBSB:0x00007fdd4aab02a0>

CryptoApis::GetLatestMinedBlockRIBS.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `GetLatestMinedBlockRIBSB`
- `GetLatestMinedBlockRIBSBC`
- `GetLatestMinedBlockRIBSD`
- `GetLatestMinedBlockRIBSD2`
- `GetLatestMinedBlockRIBSE`
- `GetLatestMinedBlockRIBSEC`
- `GetLatestMinedBlockRIBSL`
- `nil` (if no type matches)

