# OpenapiClient::DefaultApi

All URIs are relative to *https://rest.cryptoapis.io/v2*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_contract_details_by_address**](DefaultApi.md#get_contract_details_by_address) | **GET** /blockchain-data/{blockchain}/{network}/addresses/{contractAddress}/contract | Get Contract Details by Address |


## get_contract_details_by_address

> <GetContractDetailsByAddressResponse> get_contract_details_by_address(blockchain, network, contract_address, opts)

Get Contract Details by Address

This endpoint will return a smart contract details by address, this address is the address of the smart contract. It's not the same as the smart contract creator address.

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

api_instance = OpenapiClient::DefaultApi.new
blockchain = 'ethereum' # String | 
network = 'mainnet' # String | 
contract_address = 'contract_address_example' # String | String identifier of the token
opts = {
  context: 'context_example' # String | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. `context` is specified by the user.
}

begin
  # Get Contract Details by Address
  result = api_instance.get_contract_details_by_address(blockchain, network, contract_address, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling DefaultApi->get_contract_details_by_address: #{e}"
end
```

#### Using the get_contract_details_by_address_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetContractDetailsByAddressResponse>, Integer, Hash)> get_contract_details_by_address_with_http_info(blockchain, network, contract_address, opts)

```ruby
begin
  # Get Contract Details by Address
  data, status_code, headers = api_instance.get_contract_details_by_address_with_http_info(blockchain, network, contract_address, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetContractDetailsByAddressResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling DefaultApi->get_contract_details_by_address_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **blockchain** | **String** |  |  |
| **network** | **String** |  |  |
| **contract_address** | **String** | String identifier of the token |  |
| **context** | **String** | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user. | [optional] |

### Return type

[**GetContractDetailsByAddressResponse**](GetContractDetailsByAddressResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

