# CryptoApis::AssetsApi

All URIs are relative to *https://rest.cryptoapis.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_asset_details_by_asset_id**](AssetsApi.md#get_asset_details_by_asset_id) | **GET** /market-data/assets/assetId/{assetId} | Get Asset Details By Asset ID |
| [**get_asset_details_by_asset_symbol**](AssetsApi.md#get_asset_details_by_asset_symbol) | **GET** /market-data/assets/{assetSymbol} | Get Asset Details By Asset Symbol |


## get_asset_details_by_asset_id

> <GetAssetDetailsByAssetIDR> get_asset_details_by_asset_id(asset_id, opts)

Get Asset Details By Asset ID

Through this endpoint users can obtain information on assets by `assetId`.    The details returned could include information on the latest rate and rate fluctuation of different periods of time - 24 hours, a week, one hour, the encoding of the logo, and more.

### Examples

```ruby
require 'time'
require 'crypto_apis'
# setup authorization
CryptoApis.configure do |config|
  # Configure API key authorization: ApiKey
  config.api_key['ApiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKey'] = 'Bearer'
end

api_instance = CryptoApis::AssetsApi.new
asset_id = '5b1ea92e584bf50020130612' # String | Defines the unique ID of the specific asset.
opts = {
  context: 'yourExampleString' # String | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. `context` is specified by the user.
}

begin
  # Get Asset Details By Asset ID
  result = api_instance.get_asset_details_by_asset_id(asset_id, opts)
  p result
rescue CryptoApis::ApiError => e
  puts "Error when calling AssetsApi->get_asset_details_by_asset_id: #{e}"
end
```

#### Using the get_asset_details_by_asset_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAssetDetailsByAssetIDR>, Integer, Hash)> get_asset_details_by_asset_id_with_http_info(asset_id, opts)

```ruby
begin
  # Get Asset Details By Asset ID
  data, status_code, headers = api_instance.get_asset_details_by_asset_id_with_http_info(asset_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAssetDetailsByAssetIDR>
rescue CryptoApis::ApiError => e
  puts "Error when calling AssetsApi->get_asset_details_by_asset_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **asset_id** | **String** | Defines the unique ID of the specific asset. |  |
| **context** | **String** | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user. | [optional] |

### Return type

[**GetAssetDetailsByAssetIDR**](GetAssetDetailsByAssetIDR.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_asset_details_by_asset_symbol

> <GetAssetDetailsByAssetSymbolR> get_asset_details_by_asset_symbol(asset_symbol, opts)

Get Asset Details By Asset Symbol

Through this endpoint users can obtain information on assets by asset symbol.    The details returned could include information on the latest rate and rate fluctuation of different periods of time - 24 hours, a week, one hour, the encoding of the logo, and more.

### Examples

```ruby
require 'time'
require 'crypto_apis'
# setup authorization
CryptoApis.configure do |config|
  # Configure API key authorization: ApiKey
  config.api_key['ApiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKey'] = 'Bearer'
end

api_instance = CryptoApis::AssetsApi.new
asset_symbol = 'BTC' # String | Specifies the asset's unique symbol in the Crypto APIs listings.
opts = {
  context: 'yourExampleString' # String | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. `context` is specified by the user.
}

begin
  # Get Asset Details By Asset Symbol
  result = api_instance.get_asset_details_by_asset_symbol(asset_symbol, opts)
  p result
rescue CryptoApis::ApiError => e
  puts "Error when calling AssetsApi->get_asset_details_by_asset_symbol: #{e}"
end
```

#### Using the get_asset_details_by_asset_symbol_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAssetDetailsByAssetSymbolR>, Integer, Hash)> get_asset_details_by_asset_symbol_with_http_info(asset_symbol, opts)

```ruby
begin
  # Get Asset Details By Asset Symbol
  data, status_code, headers = api_instance.get_asset_details_by_asset_symbol_with_http_info(asset_symbol, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAssetDetailsByAssetSymbolR>
rescue CryptoApis::ApiError => e
  puts "Error when calling AssetsApi->get_asset_details_by_asset_symbol_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **asset_symbol** | **String** | Specifies the asset&#39;s unique symbol in the Crypto APIs listings. |  |
| **context** | **String** | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user. | [optional] |

### Return type

[**GetAssetDetailsByAssetSymbolR**](GetAssetDetailsByAssetSymbolR.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

