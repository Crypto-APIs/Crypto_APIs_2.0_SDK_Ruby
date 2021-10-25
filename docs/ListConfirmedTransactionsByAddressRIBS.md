# CryptoApis::ListConfirmedTransactionsByAddressRIBS

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'crypto_apis'

CryptoApis::ListConfirmedTransactionsByAddressRIBS.openapi_one_of
# =>
# [
#   :'ListConfirmedTransactionsByAddressRIBSB',
#   :'ListConfirmedTransactionsByAddressRIBSBC',
#   :'ListConfirmedTransactionsByAddressRIBSBSC',
#   :'ListConfirmedTransactionsByAddressRIBSD',
#   :'ListConfirmedTransactionsByAddressRIBSD2',
#   :'ListConfirmedTransactionsByAddressRIBSE',
#   :'ListConfirmedTransactionsByAddressRIBSEC',
#   :'ListConfirmedTransactionsByAddressRIBSL',
#   :'ListConfirmedTransactionsByAddressRIBSZ'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'crypto_apis'

CryptoApis::ListConfirmedTransactionsByAddressRIBS.build(data)
# => #<ListConfirmedTransactionsByAddressRIBSB:0x00007fdd4aab02a0>

CryptoApis::ListConfirmedTransactionsByAddressRIBS.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `ListConfirmedTransactionsByAddressRIBSB`
- `ListConfirmedTransactionsByAddressRIBSBC`
- `ListConfirmedTransactionsByAddressRIBSBSC`
- `ListConfirmedTransactionsByAddressRIBSD`
- `ListConfirmedTransactionsByAddressRIBSD2`
- `ListConfirmedTransactionsByAddressRIBSE`
- `ListConfirmedTransactionsByAddressRIBSEC`
- `ListConfirmedTransactionsByAddressRIBSL`
- `ListConfirmedTransactionsByAddressRIBSZ`
- `nil` (if no type matches)

