# CryptoApis::ListAssetsDetailsRI

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **asset_id** | **String** | Defines the unique ID of the specific asset. |  |
| **asset_logo** | [**ListAssetsDetailsRIAssetLogo**](ListAssetsDetailsRIAssetLogo.md) |  |  |
| **asset_name** | **String** | Specifies the name of the asset in question. |  |
| **asset_original_symbol** | **String** | Specifies the asset&#39;s original symbol as introduced by its founders. |  |
| **asset_symbol** | **String** | Specifies the asset&#39;s unique symbol in the Crypto APIs listings. |  |
| **asset_type** | **String** | Defines the type of the supported asset. This could be either \&quot;crypto\&quot; or \&quot;fiat\&quot;. |  |
| **latest_rate** | [**ListAssetsDetailsRILatestRate**](ListAssetsDetailsRILatestRate.md) |  |  |
| **specific_data** | [**ListAssetsDetailsRISpecificData**](ListAssetsDetailsRISpecificData.md) |  |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::ListAssetsDetailsRI.new(
  asset_id: 5b1ea92e584bf50020130615,
  asset_logo: null,
  asset_name: Bitcoin,
  asset_original_symbol: BTC,
  asset_symbol: BTC,
  asset_type: crypto,
  latest_rate: null,
  specific_data: null
)
```

