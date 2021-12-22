# CryptoApis::ListDepositAddressesRIFungibleTokens

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **String** | Defines the amount of the fungible tokens. |  |
| **identifier** | **String** | Defines the specific token identifier. For Bitcoin-based transactions it should be the propertyId and for Ethereum-based transactions - the contract. |  |
| **name** | **String** | Defines the token&#39;s name as a string. |  |
| **symbol** | **String** | Defines the symbol of the fungible tokens. |  |
| **token_decimals** | **Integer** | Defines the decimals of the token, i.e. the number of digits that come after the decimal coma of the token. |  |
| **type** | **String** | Defines the specific token type. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::ListDepositAddressesRIFungibleTokens.new(
  amount: 0.254,
  identifier: 0xdac17f958d2ee523a2206206994597c13d831ec7,
  name: Tether USD,
  symbol: USDT,
  token_decimals: 6,
  type: ERC-20
)
```

