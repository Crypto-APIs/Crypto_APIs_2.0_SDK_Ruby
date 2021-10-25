# CryptoApis::GetWalletAssetDetailsRIConfirmedBalance

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **String** | Specifies the amount of the confirmed balance. |  |
| **unit** | **String** | Specifies the unit of the amount of the confirmed balance. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::GetWalletAssetDetailsRIConfirmedBalance.new(
  amount: 0.0101,
  unit: BTC
)
```

