# CryptoApis::GetWalletAssetDetailsRI

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **confirmed_balance** | [**GetWalletAssetDetailsRIConfirmedBalance**](GetWalletAssetDetailsRIConfirmedBalance.md) |  |  |
| **deposit_addresses_count** | **Integer** | Specifies the count of deposit addresses in the Wallet. |  |
| **fungible_tokens** | [**Array&lt;GetWalletAssetDetailsRIFungibleTokensInner&gt;**](GetWalletAssetDetailsRIFungibleTokensInner.md) | Represents fungible tokens&#39;es detailed information |  |
| **name** | **String** | Defines the name of the Wallet given to it by the user. |  |
| **non_fungible_tokens** | [**Array&lt;GetWalletAssetDetailsRINonFungibleTokensInner&gt;**](GetWalletAssetDetailsRINonFungibleTokensInner.md) | Represents non-fungible tokens&#39;es detailed information. |  |
| **recieved_confirmed_amount** | [**GetWalletAssetDetailsRIRecievedConfirmedAmount**](GetWalletAssetDetailsRIRecievedConfirmedAmount.md) |  |  |
| **sent_confirmed_amount** | [**GetWalletAssetDetailsRISentConfirmedAmount**](GetWalletAssetDetailsRISentConfirmedAmount.md) |  |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::GetWalletAssetDetailsRI.new(
  confirmed_balance: null,
  deposit_addresses_count: 5,
  fungible_tokens: null,
  name: main vault,
  non_fungible_tokens: null,
  recieved_confirmed_amount: null,
  sent_confirmed_amount: null
)
```

