# CryptoApis::GetHDWalletXPubYPubZPubAssetsRI

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **fungible_tokens** | [**Array&lt;GetHDWalletXPubYPubZPubAssetsRIFungibleTokensInner&gt;**](GetHDWalletXPubYPubZPubAssetsRIFungibleTokensInner.md) | Represents fungible tokens&#39;es detailed information | [optional] |
| **non_fungible_tokens** | [**Array&lt;GetHDWalletXPubYPubZPubAssetsRINonFungibleTokensInner&gt;**](GetHDWalletXPubYPubZPubAssetsRINonFungibleTokensInner.md) | Represents non-fungible tokens&#39;es detailed information. | [optional] |
| **confirmed_balance** | [**GetHDWalletXPubYPubZPubAssetsRIConfirmedBalance**](GetHDWalletXPubYPubZPubAssetsRIConfirmedBalance.md) |  |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::GetHDWalletXPubYPubZPubAssetsRI.new(
  fungible_tokens: null,
  non_fungible_tokens: null,
  confirmed_balance: null
)
```

