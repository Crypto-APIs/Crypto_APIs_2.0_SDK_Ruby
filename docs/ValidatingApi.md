# CryptoApis::ValidatingApi

All URIs are relative to *https://rest.cryptoapis.io/v2*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**validate_address**](ValidatingApi.md#validate_address) | **POST** /blockchain-tools/{blockchain}/{network}/addresses/validate | Validate Address |


## validate_address

> <ValidateAddressResponse> validate_address(blockchain, network, opts)

Validate Address

This endpoint checks user public addresses whether they are valid or not.

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

api_instance = CryptoApis::ValidatingApi.new
blockchain = 'bitcoin' # String | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc.
network = 'mainnet' # String | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \"mainnet\" is the live network with actual data while networks like \"testnet\", \"ropsten\", \"rinkeby\" are test networks.
opts = {
  context: 'context_example', # String | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. `context` is specified by the user.
  validate_address_request_body: CryptoApis::ValidateAddressRequestBody.new({data: CryptoApis::ValidateAddressRequestBodyData.new({item: CryptoApis::ValidateAddressRequestBodyDataItem.new({address: 'mho4jHBcrNCncKt38trJahXakuaBnS7LK5'})})}) # ValidateAddressRequestBody | 
}

begin
  # Validate Address
  result = api_instance.validate_address(blockchain, network, opts)
  p result
rescue CryptoApis::ApiError => e
  puts "Error when calling ValidatingApi->validate_address: #{e}"
end
```

#### Using the validate_address_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ValidateAddressResponse>, Integer, Hash)> validate_address_with_http_info(blockchain, network, opts)

```ruby
begin
  # Validate Address
  data, status_code, headers = api_instance.validate_address_with_http_info(blockchain, network, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ValidateAddressResponse>
rescue CryptoApis::ApiError => e
  puts "Error when calling ValidatingApi->validate_address_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **blockchain** | **String** | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc. |  |
| **network** | **String** | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot;, \&quot;rinkeby\&quot; are test networks. |  |
| **context** | **String** | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user. | [optional] |
| **validate_address_request_body** | [**ValidateAddressRequestBody**](ValidateAddressRequestBody.md) |  | [optional] |

### Return type

[**ValidateAddressResponse**](ValidateAddressResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

