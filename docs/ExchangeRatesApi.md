# CryptoApis::ExchangeRatesApi

All URIs are relative to *https://rest.cryptoapis.io/v2*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_exchange_rate_by_asset_symbols**](ExchangeRatesApi.md#get_exchange_rate_by_asset_symbols) | **GET** /market-data/exchange-rates/by-symbols/{fromAssetSymbol}/{toAssetSymbol} | Get Exchange Rate By Asset Symbols |
| [**get_exchange_rate_by_assets_ids**](ExchangeRatesApi.md#get_exchange_rate_by_assets_ids) | **GET** /market-data/exchange-rates/by-asset-ids/{fromAssetId}/{toAssetId} | Get Exchange Rate By Assets IDs |


## get_exchange_rate_by_asset_symbols

> <GetExchangeRateByAssetSymbolsResponse> get_exchange_rate_by_asset_symbols(from_asset_symbol, to_asset_symbol, opts)

Get Exchange Rate By Asset Symbols

Through this endpoint customers can obtain exchange rates by asset symbols. The process represents the exchange rate value of a single unit of one asset versus another one. Data is provided per unique asset symbol.

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

api_instance = CryptoApis::ExchangeRatesApi.new
from_asset_symbol = 'btc' # String | Defines the base asset symbol to get a rate for.
to_asset_symbol = 'usd' # String | Defines the relation asset symbol in which the base asset rate will be displayed.
opts = {
  context: 'context_example' # String | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. `context` is specified by the user.
}

begin
  # Get Exchange Rate By Asset Symbols
  result = api_instance.get_exchange_rate_by_asset_symbols(from_asset_symbol, to_asset_symbol, opts)
  p result
rescue CryptoApis::ApiError => e
  puts "Error when calling ExchangeRatesApi->get_exchange_rate_by_asset_symbols: #{e}"
end
```

#### Using the get_exchange_rate_by_asset_symbols_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetExchangeRateByAssetSymbolsResponse>, Integer, Hash)> get_exchange_rate_by_asset_symbols_with_http_info(from_asset_symbol, to_asset_symbol, opts)

```ruby
begin
  # Get Exchange Rate By Asset Symbols
  data, status_code, headers = api_instance.get_exchange_rate_by_asset_symbols_with_http_info(from_asset_symbol, to_asset_symbol, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetExchangeRateByAssetSymbolsResponse>
rescue CryptoApis::ApiError => e
  puts "Error when calling ExchangeRatesApi->get_exchange_rate_by_asset_symbols_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **from_asset_symbol** | **String** | Defines the base asset symbol to get a rate for. |  |
| **to_asset_symbol** | **String** | Defines the relation asset symbol in which the base asset rate will be displayed. |  |
| **context** | **String** | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user. | [optional] |

### Return type

[**GetExchangeRateByAssetSymbolsResponse**](GetExchangeRateByAssetSymbolsResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_exchange_rate_by_assets_ids

> <GetExchangeRateByAssetsIDsResponse> get_exchange_rate_by_assets_ids(from_asset_id, to_asset_id, opts)

Get Exchange Rate By Assets IDs

Through this endpoint customers can obtain exchange rates by asset IDs. The process represents the exchange rate value of a single unit of one asset versus another one. Data is provided per unique asset Reference ID.

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

api_instance = CryptoApis::ExchangeRatesApi.new
from_asset_id = '5b1ea92e584bf50020130612' # String | Defines the base asset Reference ID to get a rate for.
to_asset_id = '5b1ea92e584bf50020130615' # String | Defines the relation asset Reference ID in which the base asset rate will be displayed.
opts = {
  context: 'context_example' # String | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. `context` is specified by the user.
}

begin
  # Get Exchange Rate By Assets IDs
  result = api_instance.get_exchange_rate_by_assets_ids(from_asset_id, to_asset_id, opts)
  p result
rescue CryptoApis::ApiError => e
  puts "Error when calling ExchangeRatesApi->get_exchange_rate_by_assets_ids: #{e}"
end
```

#### Using the get_exchange_rate_by_assets_ids_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetExchangeRateByAssetsIDsResponse>, Integer, Hash)> get_exchange_rate_by_assets_ids_with_http_info(from_asset_id, to_asset_id, opts)

```ruby
begin
  # Get Exchange Rate By Assets IDs
  data, status_code, headers = api_instance.get_exchange_rate_by_assets_ids_with_http_info(from_asset_id, to_asset_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetExchangeRateByAssetsIDsResponse>
rescue CryptoApis::ApiError => e
  puts "Error when calling ExchangeRatesApi->get_exchange_rate_by_assets_ids_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **from_asset_id** | **String** | Defines the base asset Reference ID to get a rate for. |  |
| **to_asset_id** | **String** | Defines the relation asset Reference ID in which the base asset rate will be displayed. |  |
| **context** | **String** | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user. | [optional] |

### Return type

[**GetExchangeRateByAssetsIDsResponse**](GetExchangeRateByAssetsIDsResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

