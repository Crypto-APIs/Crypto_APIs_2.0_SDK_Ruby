# CryptoApis::AddTokensToExistingFromAddressRequestBodyTokenData

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'crypto_apis'

CryptoApis::AddTokensToExistingFromAddressRequestBodyTokenData.openapi_one_of
# =>
# [
#   :'AddTokensToExistingFromAddressRequestBodyTokenDataBitcoinOmniToken',
#   :'AddTokensToExistingFromAddressRequestBodyTokenDataEthereumErc20Token'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'crypto_apis'

CryptoApis::AddTokensToExistingFromAddressRequestBodyTokenData.build(data)
# => #<AddTokensToExistingFromAddressRequestBodyTokenDataBitcoinOmniToken:0x00007fdd4aab02a0>

CryptoApis::AddTokensToExistingFromAddressRequestBodyTokenData.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `AddTokensToExistingFromAddressRequestBodyTokenDataBitcoinOmniToken`
- `AddTokensToExistingFromAddressRequestBodyTokenDataEthereumErc20Token`
- `nil` (if no type matches)

