# CryptoApis::ListLatestMinedBlocksRIBS

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'crypto_apis'

CryptoApis::ListLatestMinedBlocksRIBS.openapi_one_of
# =>
# [
#   :'ListLatestMinedBlocksRIBSB',
#   :'ListLatestMinedBlocksRIBSBC',
#   :'ListLatestMinedBlocksRIBSBSC',
#   :'ListLatestMinedBlocksRIBSD',
#   :'ListLatestMinedBlocksRIBSD2',
#   :'ListLatestMinedBlocksRIBSE',
#   :'ListLatestMinedBlocksRIBSEC',
#   :'ListLatestMinedBlocksRIBSL',
#   :'ListLatestMinedBlocksRIBSZ',
#   :'ListLatestMinedBlocksRIBSZ2'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'crypto_apis'

CryptoApis::ListLatestMinedBlocksRIBS.build(data)
# => #<ListLatestMinedBlocksRIBSB:0x00007fdd4aab02a0>

CryptoApis::ListLatestMinedBlocksRIBS.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `ListLatestMinedBlocksRIBSB`
- `ListLatestMinedBlocksRIBSBC`
- `ListLatestMinedBlocksRIBSBSC`
- `ListLatestMinedBlocksRIBSD`
- `ListLatestMinedBlocksRIBSD2`
- `ListLatestMinedBlocksRIBSE`
- `ListLatestMinedBlocksRIBSEC`
- `ListLatestMinedBlocksRIBSL`
- `ListLatestMinedBlocksRIBSZ`
- `ListLatestMinedBlocksRIBSZ2`
- `nil` (if no type matches)

