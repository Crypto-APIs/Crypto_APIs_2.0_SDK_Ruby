# CryptoApis::ListAssetsDetailsResponseItemSpecificData

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'crypto_apis'

CryptoApis::ListAssetsDetailsResponseItemSpecificData.openapi_one_of
# =>
# [
#   :'ListAssetsDetailsResponseItemSpecificDataCryptoTypeData'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'crypto_apis'

CryptoApis::ListAssetsDetailsResponseItemSpecificData.build(data)
# => #<ListAssetsDetailsResponseItemSpecificDataCryptoTypeData:0x00007fdd4aab02a0>

CryptoApis::ListAssetsDetailsResponseItemSpecificData.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `ListAssetsDetailsResponseItemSpecificDataCryptoTypeData`
- `nil` (if no type matches)

