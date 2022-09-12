# CryptoApis::GetTransactionDetailsByTransactionIDFromCallbackRIBS

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'crypto_apis'

CryptoApis::GetTransactionDetailsByTransactionIDFromCallbackRIBS.openapi_one_of
# =>
# [
#   :'GetTransactionDetailsByTransactionIDFromCallbackRIBSB',
#   :'GetTransactionDetailsByTransactionIDFromCallbackRIBSBC',
#   :'GetTransactionDetailsByTransactionIDFromCallbackRIBSBSC',
#   :'GetTransactionDetailsByTransactionIDFromCallbackRIBSD',
#   :'GetTransactionDetailsByTransactionIDFromCallbackRIBSD2',
#   :'GetTransactionDetailsByTransactionIDFromCallbackRIBSE',
#   :'GetTransactionDetailsByTransactionIDFromCallbackRIBSEC',
#   :'GetTransactionDetailsByTransactionIDFromCallbackRIBSL',
#   :'GetTransactionDetailsByTransactionIDFromCallbackRIBSP',
#   :'GetTransactionDetailsByTransactionIDFromCallbackRIBST',
#   :'GetTransactionDetailsByTransactionIDFromCallbackRIBSX',
#   :'GetTransactionDetailsByTransactionIDFromCallbackRIBSZ',
#   :'GetTransactionDetailsByTransactionIDFromCallbackRIBSZ2'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'crypto_apis'

CryptoApis::GetTransactionDetailsByTransactionIDFromCallbackRIBS.build(data)
# => #<GetTransactionDetailsByTransactionIDFromCallbackRIBSB:0x00007fdd4aab02a0>

CryptoApis::GetTransactionDetailsByTransactionIDFromCallbackRIBS.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `GetTransactionDetailsByTransactionIDFromCallbackRIBSB`
- `GetTransactionDetailsByTransactionIDFromCallbackRIBSBC`
- `GetTransactionDetailsByTransactionIDFromCallbackRIBSBSC`
- `GetTransactionDetailsByTransactionIDFromCallbackRIBSD`
- `GetTransactionDetailsByTransactionIDFromCallbackRIBSD2`
- `GetTransactionDetailsByTransactionIDFromCallbackRIBSE`
- `GetTransactionDetailsByTransactionIDFromCallbackRIBSEC`
- `GetTransactionDetailsByTransactionIDFromCallbackRIBSL`
- `GetTransactionDetailsByTransactionIDFromCallbackRIBSP`
- `GetTransactionDetailsByTransactionIDFromCallbackRIBST`
- `GetTransactionDetailsByTransactionIDFromCallbackRIBSX`
- `GetTransactionDetailsByTransactionIDFromCallbackRIBSZ`
- `GetTransactionDetailsByTransactionIDFromCallbackRIBSZ2`
- `nil` (if no type matches)

