# CryptoApis::InternalApi

All URIs are relative to *https://rest.cryptoapis.io/v2*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_internal_transaction_by_transaction_hash_and_operation_id**](InternalApi.md#get_internal_transaction_by_transaction_hash_and_operation_id) | **GET** /blockchain-data/{blockchain}/{network}/transactions/{transactionHash}/internal/{operationId} | Get Internal Transaction by Transaction Hash and Operation Id |
| [**list_internal_transaction_details_by_transaction_hash**](InternalApi.md#list_internal_transaction_details_by_transaction_hash) | **GET** /blockchain-data/{blockchain}/{network}/transactions/{transactionHash}/internal | List Internal Transaction Details by Transaction Hash |


## get_internal_transaction_by_transaction_hash_and_operation_id

> <GetInternalTransactionByTransactionHashAndOperationIdR> get_internal_transaction_by_transaction_hash_and_operation_id(blockchain, network, operation_id, transaction_hash, opts)

Get Internal Transaction by Transaction Hash and Operation Id

Through this endpoint customers can obtain detailed information about a specific Internal Transaction by using the attributes `transactionHash`  (the parent transaction's Hash) and `operationId` (type trace address).    An internal transaction is the result of a smart contract being triggered by an EOA or a subsequent contract call.

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

api_instance = CryptoApis::InternalApi.new
blockchain = 'ethereum' # String | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc.
network = 'mainnet' # String | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \"mainnet\" is the live network with actual data while networks like \"testnet\", \"ropsten\", \"rinkeby\" are test networks.
operation_id = 'call_4' # String | Represents the unique internal transaction ID in regards to the parent transaction (type trace address).
transaction_hash = '0x92bb77e16444e0417c8b50dfab68e89c7ad27d4140a766c3bbd4d0ac195f12fc' # String | String identifier of the parent transaction of the internal transaction represented in CryptoAPIs.
opts = {
  context: 'context_example' # String | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. `context` is specified by the user.
}

begin
  # Get Internal Transaction by Transaction Hash and Operation Id
  result = api_instance.get_internal_transaction_by_transaction_hash_and_operation_id(blockchain, network, operation_id, transaction_hash, opts)
  p result
rescue CryptoApis::ApiError => e
  puts "Error when calling InternalApi->get_internal_transaction_by_transaction_hash_and_operation_id: #{e}"
end
```

#### Using the get_internal_transaction_by_transaction_hash_and_operation_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetInternalTransactionByTransactionHashAndOperationIdR>, Integer, Hash)> get_internal_transaction_by_transaction_hash_and_operation_id_with_http_info(blockchain, network, operation_id, transaction_hash, opts)

```ruby
begin
  # Get Internal Transaction by Transaction Hash and Operation Id
  data, status_code, headers = api_instance.get_internal_transaction_by_transaction_hash_and_operation_id_with_http_info(blockchain, network, operation_id, transaction_hash, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetInternalTransactionByTransactionHashAndOperationIdR>
rescue CryptoApis::ApiError => e
  puts "Error when calling InternalApi->get_internal_transaction_by_transaction_hash_and_operation_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **blockchain** | **String** | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc. | [default to &#39;ethereum&#39;] |
| **network** | **String** | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot;, \&quot;rinkeby\&quot; are test networks. | [default to &#39;ropsten&#39;] |
| **operation_id** | **String** | Represents the unique internal transaction ID in regards to the parent transaction (type trace address). |  |
| **transaction_hash** | **String** | String identifier of the parent transaction of the internal transaction represented in CryptoAPIs. |  |
| **context** | **String** | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user. | [optional] |

### Return type

[**GetInternalTransactionByTransactionHashAndOperationIdR**](GetInternalTransactionByTransactionHashAndOperationIdR.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_internal_transaction_details_by_transaction_hash

> <ListInternalTransactionDetailsByTransactionHashR> list_internal_transaction_details_by_transaction_hash(blockchain, network, transaction_hash, opts)

List Internal Transaction Details by Transaction Hash

Through this endpoint customers can list internal transactions along with their details by a specific attribute `transactionHash`, which is the parent transaction's Hash.    An internal transaction is the result of a smart contract being triggered by an EOA or a subsequent contract call.    {note}Please note that listing data from the same type will apply pagination on the results.{/note}

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

api_instance = CryptoApis::InternalApi.new
blockchain = 'ethereum' # String | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc.
network = 'mainnet' # String | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \"mainnet\" is the live network with actual data while networks like \"testnet\", \"ropsten\", \"rinkeby\" are test networks.
transaction_hash = '0x5d4ea0471b70de09fa3d6a4bc32f703ec44483bffa4d6169fa0a36c6a1dc108a' # String | String identifier of the parent transaction of the internal transaction represented in CryptoAPIs.
opts = {
  context: 'context_example', # String | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. `context` is specified by the user.
  limit: 50, # Integer | Defines how many items should be returned in the response per page basis.
  offset: 10 # Integer | The starting index of the response items, i.e. where the response should start listing the returned items.
}

begin
  # List Internal Transaction Details by Transaction Hash
  result = api_instance.list_internal_transaction_details_by_transaction_hash(blockchain, network, transaction_hash, opts)
  p result
rescue CryptoApis::ApiError => e
  puts "Error when calling InternalApi->list_internal_transaction_details_by_transaction_hash: #{e}"
end
```

#### Using the list_internal_transaction_details_by_transaction_hash_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListInternalTransactionDetailsByTransactionHashR>, Integer, Hash)> list_internal_transaction_details_by_transaction_hash_with_http_info(blockchain, network, transaction_hash, opts)

```ruby
begin
  # List Internal Transaction Details by Transaction Hash
  data, status_code, headers = api_instance.list_internal_transaction_details_by_transaction_hash_with_http_info(blockchain, network, transaction_hash, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListInternalTransactionDetailsByTransactionHashR>
rescue CryptoApis::ApiError => e
  puts "Error when calling InternalApi->list_internal_transaction_details_by_transaction_hash_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **blockchain** | **String** | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc. | [default to &#39;ethereum&#39;] |
| **network** | **String** | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot;, \&quot;rinkeby\&quot; are test networks. | [default to &#39;mainnet&#39;] |
| **transaction_hash** | **String** | String identifier of the parent transaction of the internal transaction represented in CryptoAPIs. |  |
| **context** | **String** | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user. | [optional] |
| **limit** | **Integer** | Defines how many items should be returned in the response per page basis. | [optional][default to 50] |
| **offset** | **Integer** | The starting index of the response items, i.e. where the response should start listing the returned items. | [optional][default to 0] |

### Return type

[**ListInternalTransactionDetailsByTransactionHashR**](ListInternalTransactionDetailsByTransactionHashR.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

