# CryptoApis::GetWalletAssetDetailsRIFungibleTokens

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **confirmed_amount** | **String** | Defines the amount of the fungible tokens. |  |
| **identifier** | **String** | Defines the specific token identifier. For Bitcoin-based transactions it should be the propertyId and for Ethereum-based transactions - the contract. |  |
| **symbol** | **String** | Defines the symbol of the fungible tokens. |  |
| **type** | **String** | Defines the specific token type. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::GetWalletAssetDetailsRIFungibleTokens.new(
  confirmed_amount: 0.254,
  identifier: 0xdac17f958d2ee523a2206206994597c13d831ec7,
  symbol: USDT,
  type: ERC-20
)
```

