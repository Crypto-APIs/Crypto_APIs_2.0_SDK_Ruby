# OpenapiClient::ListTokensForwardingAutomationsResponseItemTokenData

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'openapi_client'

OpenapiClient::ListTokensForwardingAutomationsResponseItemTokenData.openapi_one_of
# =>
# [
#   :'ListTokensForwardingAutomationsResponseItemTokenDataBitcoinOmniToken',
#   :'ListTokensForwardingAutomationsResponseItemTokenDataEthereumToken'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'openapi_client'

OpenapiClient::ListTokensForwardingAutomationsResponseItemTokenData.build(data)
# => #<ListTokensForwardingAutomationsResponseItemTokenDataBitcoinOmniToken:0x00007fdd4aab02a0>

OpenapiClient::ListTokensForwardingAutomationsResponseItemTokenData.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `ListTokensForwardingAutomationsResponseItemTokenDataBitcoinOmniToken`
- `ListTokensForwardingAutomationsResponseItemTokenDataEthereumToken`
- `nil` (if no type matches)

