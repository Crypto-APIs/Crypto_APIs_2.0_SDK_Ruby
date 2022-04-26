# CryptoApis::GetHDWalletXPubYPubZPubAssetsRINonFungibleTokens

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **identifier** | **String** | Represents tokens&#39; contract address. |  |
| **symbol** | **String** | Defines the symbol of the non-fungible token. |  |
| **token_id** | **String** | Represents tokens&#39; unique identifier. |  |
| **type** | **String** | Defines the specific token type. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::GetHDWalletXPubYPubZPubAssetsRINonFungibleTokens.new(
  identifier: 0x90ca8a3eb2574f937f514749ce619fdcca187d45,
  symbol: GA,
  token_id: 0x000000000000000000000000000000000000000000000000000000000000195b,
  type: ERC-721
)
```

