# CryptoApis::AssetsApi

All URIs are relative to *https://rest.cryptoapis.io/v2*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_asset_details_by_asset_id**](AssetsApi.md#get_asset_details_by_asset_id) | **GET** /market-data/assets/assetId/{assetId} | Get Asset Details By Asset ID |
| [**get_asset_details_by_asset_symbol**](AssetsApi.md#get_asset_details_by_asset_symbol) | **GET** /market-data/assets/{assetSymbol} | Get Asset Details By Asset Symbol |
| [**list_assets_details**](AssetsApi.md#list_assets_details) | **GET** /market-data/assets/details | List Assets Details |


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


## list_assets_details

> <ListAssetsDetailsR> list_assets_details(opts)

List Assets Details

This endpoint will return a list of details on assets. These could be cryptocurrencies or FIAT assets that we support. Each asset has a unique identifier - `assetId` and a unique symbol in the form of a string, e.g. \"BTC\".    The details returned could include information on the latest rate and rate fluctuation of different periods of time - 24 hours, a week, one hour, the encoding of the logo, and more.

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
opts = {
  context: 'yourExampleString', # String | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. `context` is specified by the user.
  asset_type: 'fiat', # String | Defines the type of the supported asset. This could be either \"crypto\" or \"fiat\".
  crypto_type: 'coin', # String | Subtype of the crypto assets. Could be COIN or TOKEN
  limit: 50, # Integer | Defines how many items should be returned in the response per page basis.
  offset: 0, # Integer | The starting index of the response items, i.e. where the response should start listing the returned items.
  waas_enabled: true # Boolean | Show only if WaaS is/not enabled
}

begin
  # List Assets Details
  result = api_instance.list_assets_details(opts)
  p result
rescue CryptoApis::ApiError => e
  puts "Error when calling AssetsApi->list_assets_details: #{e}"
end
```

#### Using the list_assets_details_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListAssetsDetailsR>, Integer, Hash)> list_assets_details_with_http_info(opts)

```ruby
begin
  # List Assets Details
  data, status_code, headers = api_instance.list_assets_details_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListAssetsDetailsR>
rescue CryptoApis::ApiError => e
  puts "Error when calling AssetsApi->list_assets_details_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **context** | **String** | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user. | [optional] |
| **asset_type** | **String** | Defines the type of the supported asset. This could be either \&quot;crypto\&quot; or \&quot;fiat\&quot;. | [optional] |
| **crypto_type** | **String** | Subtype of the crypto assets. Could be COIN or TOKEN | [optional] |
| **limit** | **Integer** | Defines how many items should be returned in the response per page basis. | [optional][default to 50] |
| **offset** | **Integer** | The starting index of the response items, i.e. where the response should start listing the returned items. | [optional][default to 0] |
| **waas_enabled** | **Boolean** | Show only if WaaS is/not enabled | [optional] |

### Return type

[**ListAssetsDetailsR**](ListAssetsDetailsR.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

