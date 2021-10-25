# CryptoApis::GetWalletAssetDetailsRIRecievedConfirmedAmount

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **String** | Specifies the confirmed amount that has been received. |  |
| **unit** | **String** | Specifies the unit of the confirmed amount that has been received. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::GetWalletAssetDetailsRIRecievedConfirmedAmount.new(
  amount: 0.0345,
  unit: BTC
)
```

