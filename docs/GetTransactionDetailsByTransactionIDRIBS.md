# CryptoApis::GetTransactionDetailsByTransactionIDRIBS

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'crypto_apis'

CryptoApis::GetTransactionDetailsByTransactionIDRIBS.openapi_one_of
# =>
# [
#   :'GetTransactionDetailsByTransactionIDRIBSB',
#   :'GetTransactionDetailsByTransactionIDRIBSBC',
#   :'GetTransactionDetailsByTransactionIDRIBSBSC',
#   :'GetTransactionDetailsByTransactionIDRIBSD',
#   :'GetTransactionDetailsByTransactionIDRIBSD2',
#   :'GetTransactionDetailsByTransactionIDRIBSE',
#   :'GetTransactionDetailsByTransactionIDRIBSEC',
#   :'GetTransactionDetailsByTransactionIDRIBSL'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'crypto_apis'

CryptoApis::GetTransactionDetailsByTransactionIDRIBS.build(data)
# => #<GetTransactionDetailsByTransactionIDRIBSB:0x00007fdd4aab02a0>

CryptoApis::GetTransactionDetailsByTransactionIDRIBS.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `GetTransactionDetailsByTransactionIDRIBSB`
- `GetTransactionDetailsByTransactionIDRIBSBC`
- `GetTransactionDetailsByTransactionIDRIBSBSC`
- `GetTransactionDetailsByTransactionIDRIBSD`
- `GetTransactionDetailsByTransactionIDRIBSD2`
- `GetTransactionDetailsByTransactionIDRIBSE`
- `GetTransactionDetailsByTransactionIDRIBSEC`
- `GetTransactionDetailsByTransactionIDRIBSL`
- `nil` (if no type matches)

