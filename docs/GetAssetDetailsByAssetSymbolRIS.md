# CryptoApis::GetAssetDetailsByAssetSymbolRIS

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'crypto_apis'

CryptoApis::GetAssetDetailsByAssetSymbolRIS.openapi_one_of
# =>
# [
#   :'GetAssetDetailsByAssetSymbolRISC'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'crypto_apis'

CryptoApis::GetAssetDetailsByAssetSymbolRIS.build(data)
# => #<GetAssetDetailsByAssetSymbolRISC:0x00007fdd4aab02a0>

CryptoApis::GetAssetDetailsByAssetSymbolRIS.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `GetAssetDetailsByAssetSymbolRISC`
- `nil` (if no type matches)

