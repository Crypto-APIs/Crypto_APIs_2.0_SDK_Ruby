# CryptoApis::GetExchangeRateByAssetsIDsE422

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'crypto_apis'

CryptoApis::GetExchangeRateByAssetsIDsE422.openapi_one_of
# =>
# [
#   :'CouldNotCalculateRateForPair',
#   :'InvalidRequestBodyStructure'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'crypto_apis'

CryptoApis::GetExchangeRateByAssetsIDsE422.build(data)
# => #<CouldNotCalculateRateForPair:0x00007fdd4aab02a0>

CryptoApis::GetExchangeRateByAssetsIDsE422.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `CouldNotCalculateRateForPair`
- `InvalidRequestBodyStructure`
- `nil` (if no type matches)

