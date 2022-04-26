# CryptoApis::ListConfirmedTransactionsByAddressAndTimeRangeRIBS

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'crypto_apis'

CryptoApis::ListConfirmedTransactionsByAddressAndTimeRangeRIBS.openapi_one_of
# =>
# [
#   :'ListConfirmedTransactionsByAddressAndTimeRangeRIBSB',
#   :'ListConfirmedTransactionsByAddressAndTimeRangeRIBSBC',
#   :'ListConfirmedTransactionsByAddressAndTimeRangeRIBSBSC',
#   :'ListConfirmedTransactionsByAddressAndTimeRangeRIBSD',
#   :'ListConfirmedTransactionsByAddressAndTimeRangeRIBSD2',
#   :'ListConfirmedTransactionsByAddressAndTimeRangeRIBSE',
#   :'ListConfirmedTransactionsByAddressAndTimeRangeRIBSEC',
#   :'ListConfirmedTransactionsByAddressAndTimeRangeRIBSL',
#   :'ListConfirmedTransactionsByAddressAndTimeRangeRIBSZ'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'crypto_apis'

CryptoApis::ListConfirmedTransactionsByAddressAndTimeRangeRIBS.build(data)
# => #<ListConfirmedTransactionsByAddressAndTimeRangeRIBSB:0x00007fdd4aab02a0>

CryptoApis::ListConfirmedTransactionsByAddressAndTimeRangeRIBS.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `ListConfirmedTransactionsByAddressAndTimeRangeRIBSB`
- `ListConfirmedTransactionsByAddressAndTimeRangeRIBSBC`
- `ListConfirmedTransactionsByAddressAndTimeRangeRIBSBSC`
- `ListConfirmedTransactionsByAddressAndTimeRangeRIBSD`
- `ListConfirmedTransactionsByAddressAndTimeRangeRIBSD2`
- `ListConfirmedTransactionsByAddressAndTimeRangeRIBSE`
- `ListConfirmedTransactionsByAddressAndTimeRangeRIBSEC`
- `ListConfirmedTransactionsByAddressAndTimeRangeRIBSL`
- `ListConfirmedTransactionsByAddressAndTimeRangeRIBSZ`
- `nil` (if no type matches)

