# CryptoApis::TokensForwardingSuccessToken

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'crypto_apis'

CryptoApis::TokensForwardingSuccessToken.openapi_one_of
# =>
# [
#   :'TokensForwardingSuccessErc20',
#   :'TokensForwardingSuccessErc721',
#   :'TokensForwardingSuccessOmni'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'crypto_apis'

CryptoApis::TokensForwardingSuccessToken.build(data)
# => #<TokensForwardingSuccessErc20:0x00007fdd4aab02a0>

CryptoApis::TokensForwardingSuccessToken.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `TokensForwardingSuccessErc20`
- `TokensForwardingSuccessErc721`
- `TokensForwardingSuccessOmni`
- `nil` (if no type matches)

