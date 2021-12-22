# CryptoApis::GetAssetDetailsByAssetIDRI

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **asset_id** | **String** | Defines the unique ID of the specific asset. |  |
| **asset_logo** | [**GetAssetDetailsByAssetIDRIAssetLogo**](GetAssetDetailsByAssetIDRIAssetLogo.md) |  |  |
| **asset_name** | **String** | Specifies the name of the asset in question. |  |
| **asset_original_symbol** | **String** | Specifies the asset&#39;s original symbol as introduced by its founders. |  |
| **asset_symbol** | **String** | Specifies the asset&#39;s unique symbol in the Crypto APIs listings. |  |
| **asset_type** | **String** | Defines the type of the supported asset. This could be either \&quot;crypto\&quot; or \&quot;fiat\&quot;. |  |
| **latest_rate** | [**GetAssetDetailsByAssetIDRILatestRate**](GetAssetDetailsByAssetIDRILatestRate.md) |  |  |
| **slug** | **String** | Represents the asset&#x60;s unique slug string in Crypto APIs listings. | [optional] |
| **specific_data** | [**GetAssetDetailsByAssetIDRIS**](GetAssetDetailsByAssetIDRIS.md) |  |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::GetAssetDetailsByAssetIDRI.new(
  asset_id: 5b1ea92e584bf50020130615,
  asset_logo: null,
  asset_name: Bitcoin,
  asset_original_symbol: BTC,
  asset_symbol: BTC,
  asset_type: crypto,
  latest_rate: null,
  slug: bitcoin,
  specific_data: null
)
```

