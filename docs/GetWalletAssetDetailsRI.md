# CryptoApis::GetWalletAssetDetailsRI

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **confirmed_balance** | [**GetWalletAssetDetailsRIConfirmedBalance**](GetWalletAssetDetailsRIConfirmedBalance.md) |  |  |
| **deposit_addresses_count** | **Integer** | Specifies the count of deposit addresses in the Wallet. |  |
| **name** | **String** | Defines the name of the Wallet given to it by the user. |  |
| **recieved_confirmed_amount** | [**GetWalletAssetDetailsRIRecievedConfirmedAmount**](GetWalletAssetDetailsRIRecievedConfirmedAmount.md) |  |  |
| **sent_confirmed_amount** | [**GetWalletAssetDetailsRISentConfirmedAmount**](GetWalletAssetDetailsRISentConfirmedAmount.md) |  |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::GetWalletAssetDetailsRI.new(
  confirmed_balance: null,
  deposit_addresses_count: 5,
  name: main vault,
  recieved_confirmed_amount: null,
  sent_confirmed_amount: null
)
```

