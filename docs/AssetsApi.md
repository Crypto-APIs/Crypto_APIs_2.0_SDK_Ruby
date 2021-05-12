# OpenapiClient::AssetsApi

All URIs are relative to *https://rest.cryptoapis.io/v2*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**list_assets_details**](AssetsApi.md#list_assets_details) | **GET** /market-data/assets/details | List Assets Details |


## list_assets_details

> <ListAssetsDetailsResponse> list_assets_details(opts)

List Assets Details

This endpoint will return details on a requested asset. The asset could be a cryptocurrency or FIAT asset that we support. Each asset has a unique identifier - `assetId` and a unique symbol in the form of a string, e.g. \"BTC\".    The details returned could include information on the latest rate and rate fluctuation of different periods of time - 24 hours, a week, one hour, the encoding of the logo, and more.

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

api_instance = OpenapiClient::AssetsApi.new
opts = {
  context: 'context_example', # String | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. `context` is specified by the user.
  asset_type: 'fiat', # String | Defines the type of the supported asset. This could be either \"crypto\" or \"fiat\".
  limit: 50, # Integer | Defines how many items should be returned in the response per page basis.
  offset: 10 # Integer | The starting index of the response items, i.e. where the response should start listing the returned items.
}

begin
  # List Assets Details
  result = api_instance.list_assets_details(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling AssetsApi->list_assets_details: #{e}"
end
```

#### Using the list_assets_details_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListAssetsDetailsResponse>, Integer, Hash)> list_assets_details_with_http_info(opts)

```ruby
begin
  # List Assets Details
  data, status_code, headers = api_instance.list_assets_details_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListAssetsDetailsResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling AssetsApi->list_assets_details_with_http_info: #{e}"
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

[**ListAssetsDetailsResponse**](ListAssetsDetailsResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

