# CryptoApis::ListAllAssetsByWalletIDRI

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **coins** | [**Array&lt;ListAllAssetsFromAllWalletsRICoins&gt;**](ListAllAssetsFromAllWalletsRICoins.md) |  |  |
| **fungible_tokens** | [**Array&lt;ListAllAssetsFromAllWalletsRIFungibleTokens&gt;**](ListAllAssetsFromAllWalletsRIFungibleTokens.md) | Represents fungible tokens&#39;es detailed information |  |
| **non_fungible_tokens** | [**Array&lt;ListAllAssetsFromAllWalletsRINonFungibleTokens&gt;**](ListAllAssetsFromAllWalletsRINonFungibleTokens.md) | Represents non-fungible tokens&#39;es detailed information. |  |
| **wallet_id** | **String** | Defines the unique ID of the Wallet. |  |
| **wallet_name** | **String** | Represents the name of the wallet. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::ListAllAssetsByWalletIDRI.new(
  coins: null,
  fungible_tokens: null,
  non_fungible_tokens: null,
  wallet_id: 60c9d9921c38030006675ff6,
  wallet_name: exampleName
)
```

