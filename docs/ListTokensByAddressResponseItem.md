# CryptoApis::ListTokensByAddressResponseItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **confirmed_balance** | **String** | Defines the token balance that has been confirmed. |  |
| **contract_address** | **String** | Represents the contract address of the token, which controls its logic. It is not the address that holds the tokens. |  |
| **name** | **String** | Defines the token&#39;s name as a string. |  |
| **symbol** | **String** | Defines the token symbol by which the token contract is known. It is usually 3-4 characters in length. |  |
| **type** | **String** | Defines the specific token type. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::ListTokensByAddressResponseItem.new(
  confirmed_balance: 287090.926632,
  contract_address: 0xdac17f958d2ee523a2206206994597c13d831ec7,
  name: Tether USD,
  symbol: USDT,
  type: ERC-20
)
```

