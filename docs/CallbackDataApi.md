# CryptoApis::CallbackDataApi

All URIs are relative to *https://rest.cryptoapis.io/v2*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_address_details_from_callback**](CallbackDataApi.md#get_address_details_from_callback) | **GET** /blockchain-events/{blockchain}/{network}/addresses/{address} | Get Address Details From Callback |
| [**get_block_details_by_block_hash_from_callback**](CallbackDataApi.md#get_block_details_by_block_hash_from_callback) | **GET** /blockcain-events/{blockchain}/{network}/blocks/hash/{blockHash} | Get Block Details By Block Hash From Callback |
| [**get_block_details_by_block_height_from_callback**](CallbackDataApi.md#get_block_details_by_block_height_from_callback) | **GET** /blockcain-events/{blockchain}/{network}/blocks/height/{blockHeight} | Get Block Details By Block Height From Callback |
| [**get_transaction_details_by_transaction_id_from_callback**](CallbackDataApi.md#get_transaction_details_by_transaction_id_from_callback) | **GET** /blockchain-events/{blockchain}/{network}/transactions/{transactionId} | Get Transaction Details By Transaction ID From Callback |


## get_address_details_from_callback

> <GetAddressDetailsFromCallbackR> get_address_details_from_callback(blockchain, network, address, opts)

Get Address Details From Callback

This endpoint creates a shortcut to obtain information from Blockchain data by going through Blockchain Events and a specific Event Subscription. It provides data for a specific address from the Event it takes part in only if the address already exists in the blockchain events subscriptions. It applies only for Events related to that customer.

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

api_instance = CryptoApis::CallbackDataApi.new
blockchain = 'bitcoin' # String | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc.
network = 'mainnet' # String | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \"mainnet\" is the live network with actual data while networks like \"testnet\", \"ropsten\" are test networks.
address = 'mzYijhgmzZrmuB7wBDazRKirnChKyow4M3' # String | Represents the public address, which is a compressed and shortened form of a public key.
opts = {
  context: 'context_example' # String | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. `context` is specified by the user.
}

begin
  # Get Address Details From Callback
  result = api_instance.get_address_details_from_callback(blockchain, network, address, opts)
  p result
rescue CryptoApis::ApiError => e
  puts "Error when calling CallbackDataApi->get_address_details_from_callback: #{e}"
end
```

#### Using the get_address_details_from_callback_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAddressDetailsFromCallbackR>, Integer, Hash)> get_address_details_from_callback_with_http_info(blockchain, network, address, opts)

```ruby
begin
  # Get Address Details From Callback
  data, status_code, headers = api_instance.get_address_details_from_callback_with_http_info(blockchain, network, address, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAddressDetailsFromCallbackR>
rescue CryptoApis::ApiError => e
  puts "Error when calling CallbackDataApi->get_address_details_from_callback_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **blockchain** | **String** | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc. |  |
| **network** | **String** | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot; are test networks. |  |
| **address** | **String** | Represents the public address, which is a compressed and shortened form of a public key. |  |
| **context** | **String** | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user. | [optional] |

### Return type

[**GetAddressDetailsFromCallbackR**](GetAddressDetailsFromCallbackR.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_block_details_by_block_hash_from_callback

> <GetBlockDetailsByBlockHashFromCallbackR> get_block_details_by_block_hash_from_callback(blockchain, network, block_hash, opts)

Get Block Details By Block Hash From Callback

This endpoint creates a shortcut to obtain information from Blockchain data by going through Blockchain Events and a specific Event Subscription. It provides data for a specific block by providing the `blockHash` attribute from the Event it takes part in and after making check that the customer in question does have a subscription for this block. It applies only for Events related to that user.

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

api_instance = CryptoApis::CallbackDataApi.new
blockchain = 'bitcoin' # String | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc.
network = 'mainnet' # String | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \"mainnet\" is the live network with actual data while networks like \"testnet\", \"ropsten\" are test networks.
block_hash = '000000000000000bdea8ba7df4bfd9f398e428fde8ee47152bcf93834ee48e8a' # String | Represents the hash of the block, which is its unique identifier. It represents a cryptographic digital fingerprint made by hashing the block header twice through the SHA256 algorithm.
opts = {
  context: 'context_example' # String | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. `context` is specified by the user.
}

begin
  # Get Block Details By Block Hash From Callback
  result = api_instance.get_block_details_by_block_hash_from_callback(blockchain, network, block_hash, opts)
  p result
rescue CryptoApis::ApiError => e
  puts "Error when calling CallbackDataApi->get_block_details_by_block_hash_from_callback: #{e}"
end
```

#### Using the get_block_details_by_block_hash_from_callback_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetBlockDetailsByBlockHashFromCallbackR>, Integer, Hash)> get_block_details_by_block_hash_from_callback_with_http_info(blockchain, network, block_hash, opts)

```ruby
begin
  # Get Block Details By Block Hash From Callback
  data, status_code, headers = api_instance.get_block_details_by_block_hash_from_callback_with_http_info(blockchain, network, block_hash, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetBlockDetailsByBlockHashFromCallbackR>
rescue CryptoApis::ApiError => e
  puts "Error when calling CallbackDataApi->get_block_details_by_block_hash_from_callback_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **blockchain** | **String** | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc. |  |
| **network** | **String** | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot; are test networks. |  |
| **block_hash** | **String** | Represents the hash of the block, which is its unique identifier. It represents a cryptographic digital fingerprint made by hashing the block header twice through the SHA256 algorithm. |  |
| **context** | **String** | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user. | [optional] |

### Return type

[**GetBlockDetailsByBlockHashFromCallbackR**](GetBlockDetailsByBlockHashFromCallbackR.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_block_details_by_block_height_from_callback

> <GetBlockDetailsByBlockHeightFromCallbackR> get_block_details_by_block_height_from_callback(blockchain, network, block_height, opts)

Get Block Details By Block Height From Callback

This endpoint creates a shortcut to obtain information from Blockchain data by going through Blockchain Events and a specific Event Subscription. It provides data for the specific Block by providing the `blockHeight` attribute from the Event it takes part in. It applies only for Events related to that user.

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

api_instance = CryptoApis::CallbackDataApi.new
blockchain = 'bitcoin' # String | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc.
network = 'mainnet' # String | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \"mainnet\" is the live network with actual data while networks like \"testnet\", \"ropsten\" are test networks.
block_height = 'block_height_example' # String | Numeric representation of the block height
opts = {
  context: 'context_example' # String | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. `context` is specified by the user.
}

begin
  # Get Block Details By Block Height From Callback
  result = api_instance.get_block_details_by_block_height_from_callback(blockchain, network, block_height, opts)
  p result
rescue CryptoApis::ApiError => e
  puts "Error when calling CallbackDataApi->get_block_details_by_block_height_from_callback: #{e}"
end
```

#### Using the get_block_details_by_block_height_from_callback_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetBlockDetailsByBlockHeightFromCallbackR>, Integer, Hash)> get_block_details_by_block_height_from_callback_with_http_info(blockchain, network, block_height, opts)

```ruby
begin
  # Get Block Details By Block Height From Callback
  data, status_code, headers = api_instance.get_block_details_by_block_height_from_callback_with_http_info(blockchain, network, block_height, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetBlockDetailsByBlockHeightFromCallbackR>
rescue CryptoApis::ApiError => e
  puts "Error when calling CallbackDataApi->get_block_details_by_block_height_from_callback_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **blockchain** | **String** | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc. |  |
| **network** | **String** | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot; are test networks. |  |
| **block_height** | **String** | Numeric representation of the block height |  |
| **context** | **String** | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user. | [optional] |

### Return type

[**GetBlockDetailsByBlockHeightFromCallbackR**](GetBlockDetailsByBlockHeightFromCallbackR.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_transaction_details_by_transaction_id_from_callback

> <GetTransactionDetailsByTransactionIDFromCallbackR> get_transaction_details_by_transaction_id_from_callback(blockchain, network, transaction_id, opts)

Get Transaction Details By Transaction ID From Callback

This endpoint creates a shortcut to obtain information from Blockchain data by going through Blockchain Events and a specific Event Subscription. It provides data for a specific transaction from the Event it takes part in by providing the `transactionId` attribute. It applies only for Events related to that user.

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

api_instance = CryptoApis::CallbackDataApi.new
blockchain = 'bitcoin' # String | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc.
network = 'mainnet' # String | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \"mainnet\" is the live network with actual data while networks like \"testnet\", \"ropsten\" are test networks.
transaction_id = '8888f6c8168ff69aaf6438ab185c690e8c76c63e5f9c472c1c86f08406ea74f2' # String | String identifier of the transaction
opts = {
  context: 'context_example' # String | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. `context` is specified by the user.
}

begin
  # Get Transaction Details By Transaction ID From Callback
  result = api_instance.get_transaction_details_by_transaction_id_from_callback(blockchain, network, transaction_id, opts)
  p result
rescue CryptoApis::ApiError => e
  puts "Error when calling CallbackDataApi->get_transaction_details_by_transaction_id_from_callback: #{e}"
end
```

#### Using the get_transaction_details_by_transaction_id_from_callback_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetTransactionDetailsByTransactionIDFromCallbackR>, Integer, Hash)> get_transaction_details_by_transaction_id_from_callback_with_http_info(blockchain, network, transaction_id, opts)

```ruby
begin
  # Get Transaction Details By Transaction ID From Callback
  data, status_code, headers = api_instance.get_transaction_details_by_transaction_id_from_callback_with_http_info(blockchain, network, transaction_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetTransactionDetailsByTransactionIDFromCallbackR>
rescue CryptoApis::ApiError => e
  puts "Error when calling CallbackDataApi->get_transaction_details_by_transaction_id_from_callback_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **blockchain** | **String** | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc. |  |
| **network** | **String** | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot; are test networks. |  |
| **transaction_id** | **String** | String identifier of the transaction |  |
| **context** | **String** | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user. | [optional] |

### Return type

[**GetTransactionDetailsByTransactionIDFromCallbackR**](GetTransactionDetailsByTransactionIDFromCallbackR.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

