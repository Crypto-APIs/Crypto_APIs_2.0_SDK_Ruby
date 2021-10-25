# CryptoApis::ListUnconfirmedTransactionsByAddressRIBS

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'crypto_apis'

CryptoApis::ListUnconfirmedTransactionsByAddressRIBS.openapi_one_of
# =>
# [
#   :'ListUnconfirmedTransactionsByAddressRIBSB',
#   :'ListUnconfirmedTransactionsByAddressRIBSBC',
#   :'ListUnconfirmedTransactionsByAddressRIBSBSC',
#   :'ListUnconfirmedTransactionsByAddressRIBSD',
#   :'ListUnconfirmedTransactionsByAddressRIBSD2',
#   :'ListUnconfirmedTransactionsByAddressRIBSE',
#   :'ListUnconfirmedTransactionsByAddressRIBSEC',
#   :'ListUnconfirmedTransactionsByAddressRIBSL',
#   :'ListUnconfirmedTransactionsByAddressRIBSZ'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'crypto_apis'

CryptoApis::ListUnconfirmedTransactionsByAddressRIBS.build(data)
# => #<ListUnconfirmedTransactionsByAddressRIBSB:0x00007fdd4aab02a0>

CryptoApis::ListUnconfirmedTransactionsByAddressRIBS.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `ListUnconfirmedTransactionsByAddressRIBSB`
- `ListUnconfirmedTransactionsByAddressRIBSBC`
- `ListUnconfirmedTransactionsByAddressRIBSBSC`
- `ListUnconfirmedTransactionsByAddressRIBSD`
- `ListUnconfirmedTransactionsByAddressRIBSD2`
- `ListUnconfirmedTransactionsByAddressRIBSE`
- `ListUnconfirmedTransactionsByAddressRIBSEC`
- `ListUnconfirmedTransactionsByAddressRIBSL`
- `ListUnconfirmedTransactionsByAddressRIBSZ`
- `nil` (if no type matches)

