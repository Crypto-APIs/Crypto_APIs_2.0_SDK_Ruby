# CryptoApis::DecodeRawTransactionHexRIS

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'crypto_apis'

CryptoApis::DecodeRawTransactionHexRIS.openapi_one_of
# =>
# [
#   :'DecodeRawTransactionHexRISB',
#   :'DecodeRawTransactionHexRISB2',
#   :'DecodeRawTransactionHexRISB22',
#   :'DecodeRawTransactionHexRISD',
#   :'DecodeRawTransactionHexRISD2',
#   :'DecodeRawTransactionHexRISE',
#   :'DecodeRawTransactionHexRISE2',
#   :'DecodeRawTransactionHexRISL',
#   :'DecodeRawTransactionHexRISZ'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'crypto_apis'

CryptoApis::DecodeRawTransactionHexRIS.build(data)
# => #<DecodeRawTransactionHexRISB:0x00007fdd4aab02a0>

CryptoApis::DecodeRawTransactionHexRIS.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `DecodeRawTransactionHexRISB`
- `DecodeRawTransactionHexRISB2`
- `DecodeRawTransactionHexRISB22`
- `DecodeRawTransactionHexRISD`
- `DecodeRawTransactionHexRISD2`
- `DecodeRawTransactionHexRISE`
- `DecodeRawTransactionHexRISE2`
- `DecodeRawTransactionHexRISL`
- `DecodeRawTransactionHexRISZ`
- `nil` (if no type matches)

