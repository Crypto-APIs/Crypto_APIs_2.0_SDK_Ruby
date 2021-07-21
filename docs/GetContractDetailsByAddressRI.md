# CryptoApis::GetContractDetailsByAddressRI

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **token_decimals** | **String** | Defines the number of decimals that the token possesses. |  |
| **token_name** | **String** | Specifies the token&#39;s name. | [optional] |
| **token_symbol** | **String** | Defines the unique symbol of the token. | [optional] |
| **token_type** | **String** | Defines the type of the token. |  |
| **total_supply** | **String** | Defines the total number of tokens created that exist on the market minus the ones that have been burned. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::GetContractDetailsByAddressRI.new(
  token_decimals: 18,
  token_name: Band Protocol,
  token_symbol: BAND,
  token_type: ERC-20,
  total_supply: 1000000
)
```

