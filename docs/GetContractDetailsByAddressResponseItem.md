# OpenapiClient::GetContractDetailsByAddressResponseItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **confirmed_balance** | **String** | Token balance |  |
| **creator_address** | **String** | Token creator |  |
| **token_decimals** | **String** | Number of decimals | [optional] |
| **token_name** | **String** | Token name | [optional] |
| **token_symbol** | **String** | Token symbol | [optional] |
| **token_type** | **String** | Token type | [optional] |
| **tokens_balance** | **String** | Token balance |  |
| **total_supply** | **String** | Token total supply |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::GetContractDetailsByAddressResponseItem.new(
  confirmed_balance: null,
  creator_address: null,
  token_decimals: null,
  token_name: null,
  token_symbol: null,
  token_type: null,
  tokens_balance: null,
  total_supply: null
)
```

