# OpenapiClient::MetadataApi

All URIs are relative to *https://rest.cryptoapis.io/v2*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**list_supported_assets**](MetadataApi.md#list_supported_assets) | **GET** /market-data/assets/supported | List Supported Assets |


## list_supported_assets

> <ListSupportedAssetsResponse> list_supported_assets(opts)

List Supported Assets

This endpoint will return a list of supported assets. The asset could be a cryptocurrency or FIAT assets that we support. Each asset has a unique identifier - `assetId` and a unique symbol in the form of a string, e.g. \"BTC\".

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: ApiKey
  config.api_key['ApiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKey'] = 'Bearer'
end

api_instance = OpenapiClient::MetadataApi.new
opts = {
  context: 'context_example', # String | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. `context` is specified by the user.
  asset_type: 'fiat', # String | Defines the type of the supported asset. This could be either \"crypto\" or \"fiat\".
  limit: 50, # Integer | Defines how many items should be returned in the response per page basis.
  offset: 10 # Integer | The starting index of the response items, i.e. where the response should start listing the returned items.
}

begin
  # List Supported Assets
  result = api_instance.list_supported_assets(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling MetadataApi->list_supported_assets: #{e}"
end
```

#### Using the list_supported_assets_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListSupportedAssetsResponse>, Integer, Hash)> list_supported_assets_with_http_info(opts)

```ruby
begin
  # List Supported Assets
  data, status_code, headers = api_instance.list_supported_assets_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListSupportedAssetsResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling MetadataApi->list_supported_assets_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **context** | **String** | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user. | [optional] |
| **asset_type** | **String** | Defines the type of the supported asset. This could be either \&quot;crypto\&quot; or \&quot;fiat\&quot;. | [optional] |
| **limit** | **Integer** | Defines how many items should be returned in the response per page basis. | [optional][default to 50] |
| **offset** | **Integer** | The starting index of the response items, i.e. where the response should start listing the returned items. | [optional][default to 0] |

### Return type

[**ListSupportedAssetsResponse**](ListSupportedAssetsResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

