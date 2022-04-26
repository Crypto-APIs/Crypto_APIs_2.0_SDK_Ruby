# CryptoApis::GetHDWalletXPubYPubZPubAssetsRIFungibleTokens

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **String** | Defines the amount of the fungible tokens. |  |
| **identifier** | **String** | Represents tokens&#39; contract address. |  |
| **symbol** | **String** | Defines the symbol of the fungible token. |  |
| **type** | **String** | Defines the specific token type. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::GetHDWalletXPubYPubZPubAssetsRIFungibleTokens.new(
  amount: 0.100000000000000000,
  identifier: 0x101848d5c5bbca18e6b4431eedf6b95e9adf82fa,
  symbol: WEENUS,
  type: ERC-20
)
```

