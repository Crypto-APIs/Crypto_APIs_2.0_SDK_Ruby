# OpenapiClient::ListSupportedAssetsResponseItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **asset_id** | **String** | Defines the unique ID of the specific asset. |  |
| **asset_name** | **String** | Specifies the name of the asset in question. |  |
| **asset_symbol** | **String** | Specifies the asset&#39;s unique symbol in the Crypto APIs listings. |  |
| **asset_type** | **String** | Defines the type of the supported asset. This could be either \&quot;crypto\&quot; or \&quot;fiat\&quot;. |  |
| **original_symbol** | **String** | Specifies the asset&#39;s original symbol as introduced by its founders. |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ListSupportedAssetsResponseItem.new(
  asset_id: 5b1ea92e584bf50020130615,
  asset_name: Bitcoin,
  asset_symbol: BTC,
  asset_type: crypto,
  original_symbol: BTC
)
```

