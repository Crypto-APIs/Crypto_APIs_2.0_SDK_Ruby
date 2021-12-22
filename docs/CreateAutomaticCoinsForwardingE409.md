# CryptoApis::CreateAutomaticCoinsForwardingE409

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'crypto_apis'

CryptoApis::CreateAutomaticCoinsForwardingE409.openapi_one_of
# =>
# [
#   :'AlreadyExists',
#   :'InvalidData'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'crypto_apis'

CryptoApis::CreateAutomaticCoinsForwardingE409.build(data)
# => #<AlreadyExists:0x00007fdd4aab02a0>

CryptoApis::CreateAutomaticCoinsForwardingE409.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `AlreadyExists`
- `InvalidData`
- `nil` (if no type matches)

