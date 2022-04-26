# CryptoApis::GetHDWalletXPubYPubZPubAssetsRIConfirmedBalance

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **String** | Represents the confirmed balance for the specified blockchain protocol. |  |
| **unit** | **String** | Specifies the unit of the amount of the confirmed balance. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::GetHDWalletXPubYPubZPubAssetsRIConfirmedBalance.new(
  amount: 0.008516447598774679,
  unit: ETH
)
```

