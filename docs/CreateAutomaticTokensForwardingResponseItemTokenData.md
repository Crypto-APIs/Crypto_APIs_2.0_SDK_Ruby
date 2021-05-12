# OpenapiClient::CreateAutomaticTokensForwardingResponseItemTokenData

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'openapi_client'

OpenapiClient::CreateAutomaticTokensForwardingResponseItemTokenData.openapi_one_of
# =>
# [
#   :'CreateAutomaticTokensForwardingResponseItemTokenDataBitcoinOmniToken',
#   :'CreateAutomaticTokensForwardingResponseItemTokenDataEthereumToken'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'openapi_client'

OpenapiClient::CreateAutomaticTokensForwardingResponseItemTokenData.build(data)
# => #<CreateAutomaticTokensForwardingResponseItemTokenDataBitcoinOmniToken:0x00007fdd4aab02a0>

OpenapiClient::CreateAutomaticTokensForwardingResponseItemTokenData.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `CreateAutomaticTokensForwardingResponseItemTokenDataBitcoinOmniToken`
- `CreateAutomaticTokensForwardingResponseItemTokenDataEthereumToken`
- `nil` (if no type matches)

