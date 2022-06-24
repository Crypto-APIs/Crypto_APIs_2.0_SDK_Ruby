# CryptoApis::ConfirmedTokensTransactionForCertainAmountOrHigherToken

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'crypto_apis'

CryptoApis::ConfirmedTokensTransactionForCertainAmountOrHigherToken.openapi_one_of
# =>
# [
#   :'ConfirmedTokensTransactionForCertainAmountOrHigherBep20',
#   :'ConfirmedTokensTransactionForCertainAmountOrHigherErc20',
#   :'ConfirmedTokensTransactionForCertainAmountOrHigherErc721'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'crypto_apis'

CryptoApis::ConfirmedTokensTransactionForCertainAmountOrHigherToken.build(data)
# => #<ConfirmedTokensTransactionForCertainAmountOrHigherBep20:0x00007fdd4aab02a0>

CryptoApis::ConfirmedTokensTransactionForCertainAmountOrHigherToken.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `ConfirmedTokensTransactionForCertainAmountOrHigherBep20`
- `ConfirmedTokensTransactionForCertainAmountOrHigherErc20`
- `ConfirmedTokensTransactionForCertainAmountOrHigherErc721`
- `nil` (if no type matches)

