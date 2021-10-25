# CryptoApis::GetWalletAssetDetailsRISentConfirmedAmount

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **String** | Specifies the confirmed amount that has been sent. |  |
| **unit** | **String** | Specifies the unit of the confirmed amount that has been sent. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::GetWalletAssetDetailsRISentConfirmedAmount.new(
  amount: 0.0134,
  unit: BTC
)
```

