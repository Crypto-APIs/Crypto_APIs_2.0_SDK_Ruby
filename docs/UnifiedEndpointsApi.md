# CryptoApis::UnifiedEndpointsApi

All URIs are relative to *https://rest.cryptoapis.io/v2*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_address_details**](UnifiedEndpointsApi.md#get_address_details) | **GET** /blockchain-data/{blockchain}/{network}/addresses/{address} | Get Address Details |
| [**get_block_details_by_block_hash**](UnifiedEndpointsApi.md#get_block_details_by_block_hash) | **GET** /blockchain-data/{blockchain}/{network}/blocks/hash/{blockHash} | Get Block Details By Block Hash |
| [**get_block_details_by_block_height**](UnifiedEndpointsApi.md#get_block_details_by_block_height) | **GET** /blockchain-data/{blockchain}/{network}/blocks/height/{height} | Get Block Details By Block Height |
| [**get_fee_recommendations**](UnifiedEndpointsApi.md#get_fee_recommendations) | **GET** /blockchain-data/{blockchain}/{network}/mempool/fees | Get Fee Recommendations |
| [**get_latest_mined_block**](UnifiedEndpointsApi.md#get_latest_mined_block) | **GET** /blockchain-data/{blockchain}/{network}/blocks/last | Get Latest Mined Block |
| [**get_transaction_details_by_transaction_id**](UnifiedEndpointsApi.md#get_transaction_details_by_transaction_id) | **GET** /blockchain-data/{blockchain}/{network}/transactions/{transactionId} | Get Transaction Details By Transaction ID |
| [**list_transactions_by_address**](UnifiedEndpointsApi.md#list_transactions_by_address) | **GET** /blockchain-data/{blockchain}/{network}/addresses/{address}/transactions | List Transactions By Address |
| [**list_transactions_by_block_hash**](UnifiedEndpointsApi.md#list_transactions_by_block_hash) | **GET** /blockchain-data/{blockchain}/{network}/blocks/hash/{blockHash}/transactions | List Transactions by Block Hash |
| [**list_transactions_by_block_height**](UnifiedEndpointsApi.md#list_transactions_by_block_height) | **GET** /blockchain-data/{blockchain}/{network}/blocks/height/{height}/transactions | List Transactions by Block Height |


## get_address_details

> <GetAddressDetailsResponse> get_address_details(blockchain, network, address, opts)

Get Address Details

Through this endpoint the customer can receive basic information about a given address based on confirmed/synced blocks only. In the case where there are any incoming or outgoing **unconfirmed** transactions for the specific address, they **will not** be counted or calculated here.

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

api_instance = CryptoApis::UnifiedEndpointsApi.new
blockchain = 'bitcoin' # String | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc.
network = 'mainnet' # String | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \"mainnet\" is the live network with actual data while networks like \"testnet\", \"ropsten\", \"rinkeby\" are test networks.
address = 'mzYijhgmzZrmuB7wBDazRKirnChKyow4M3' # String | Represents the public address, which is a compressed and shortened form of a public key.
opts = {
  context: 'context_example' # String | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. `context` is specified by the user.
}

begin
  # Get Address Details
  result = api_instance.get_address_details(blockchain, network, address, opts)
  p result
rescue CryptoApis::ApiError => e
  puts "Error when calling UnifiedEndpointsApi->get_address_details: #{e}"
end
```

#### Using the get_address_details_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAddressDetailsResponse>, Integer, Hash)> get_address_details_with_http_info(blockchain, network, address, opts)

```ruby
begin
  # Get Address Details
  data, status_code, headers = api_instance.get_address_details_with_http_info(blockchain, network, address, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAddressDetailsResponse>
rescue CryptoApis::ApiError => e
  puts "Error when calling UnifiedEndpointsApi->get_address_details_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **blockchain** | **String** | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc. |  |
| **network** | **String** | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot;, \&quot;rinkeby\&quot; are test networks. |  |
| **address** | **String** | Represents the public address, which is a compressed and shortened form of a public key. |  |
| **context** | **String** | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user. | [optional] |

### Return type

[**GetAddressDetailsResponse**](GetAddressDetailsResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_block_details_by_block_hash

> <GetBlockDetailsByBlockHashResponse> get_block_details_by_block_hash(blockchain, network, block_hash, opts)

Get Block Details By Block Hash

Through this endpoint customers can obtain basic information about a given mined block, specifically by using the `hash` parameter. These block details could include the hash of the specific, the previous and the next block, its transactions count, its height, etc.     Blockchain specific data is information such as version, nonce, size, bits, merkleroot, etc.

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

api_instance = CryptoApis::UnifiedEndpointsApi.new
blockchain = 'bitcoin' # String | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc.
network = 'mainnet' # String | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \"mainnet\" is the live network with actual data while networks like \"testnet\", \"ropsten\", \"rinkeby\" are test networks.
block_hash = '0000000006b3f483bec16b8a85c632bdd30a14a202c83a9148002c9ee441dd0c' # String | Represents the hash of the block, which is its unique identifier. It represents a cryptographic digital fingerprint made by hashing the block header twice through the SHA256 algorithm.
opts = {
  context: 'context_example' # String | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. `context` is specified by the user.
}

begin
  # Get Block Details By Block Hash
  result = api_instance.get_block_details_by_block_hash(blockchain, network, block_hash, opts)
  p result
rescue CryptoApis::ApiError => e
  puts "Error when calling UnifiedEndpointsApi->get_block_details_by_block_hash: #{e}"
end
```

#### Using the get_block_details_by_block_hash_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetBlockDetailsByBlockHashResponse>, Integer, Hash)> get_block_details_by_block_hash_with_http_info(blockchain, network, block_hash, opts)

```ruby
begin
  # Get Block Details By Block Hash
  data, status_code, headers = api_instance.get_block_details_by_block_hash_with_http_info(blockchain, network, block_hash, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetBlockDetailsByBlockHashResponse>
rescue CryptoApis::ApiError => e
  puts "Error when calling UnifiedEndpointsApi->get_block_details_by_block_hash_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **blockchain** | **String** | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc. |  |
| **network** | **String** | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot;, \&quot;rinkeby\&quot; are test networks. |  |
| **block_hash** | **String** | Represents the hash of the block, which is its unique identifier. It represents a cryptographic digital fingerprint made by hashing the block header twice through the SHA256 algorithm. |  |
| **context** | **String** | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user. | [optional] |

### Return type

[**GetBlockDetailsByBlockHashResponse**](GetBlockDetailsByBlockHashResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_block_details_by_block_height

> <GetBlockDetailsByBlockHeightResponse> get_block_details_by_block_height(blockchain, network, height, opts)

Get Block Details By Block Height

Through this endpoint customers can obtain basic information about a given mined block, specifically by using the `height` parameter. These block details could include the hash of the specific, the previous and the next block, its transactions count, its height, etc.     Blockchain specific data is information such as version, nonce, size, bits, merkleroot, etc.

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

api_instance = CryptoApis::UnifiedEndpointsApi.new
blockchain = 'bitcoin' # String | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc.
network = 'mainnet' # String | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \"mainnet\" is the live network with actual data while networks like \"testnet\", \"ropsten\", \"rinkeby\" are test networks.
height = 673852 # Integer | Represents the number of blocks in the blockchain preceding this specific block. Block numbers have no gaps. A blockchain usually starts with block 0 called the \"Genesis block\".
opts = {
  context: 'context_example' # String | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. `context` is specified by the user.
}

begin
  # Get Block Details By Block Height
  result = api_instance.get_block_details_by_block_height(blockchain, network, height, opts)
  p result
rescue CryptoApis::ApiError => e
  puts "Error when calling UnifiedEndpointsApi->get_block_details_by_block_height: #{e}"
end
```

#### Using the get_block_details_by_block_height_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetBlockDetailsByBlockHeightResponse>, Integer, Hash)> get_block_details_by_block_height_with_http_info(blockchain, network, height, opts)

```ruby
begin
  # Get Block Details By Block Height
  data, status_code, headers = api_instance.get_block_details_by_block_height_with_http_info(blockchain, network, height, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetBlockDetailsByBlockHeightResponse>
rescue CryptoApis::ApiError => e
  puts "Error when calling UnifiedEndpointsApi->get_block_details_by_block_height_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **blockchain** | **String** | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc. |  |
| **network** | **String** | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot;, \&quot;rinkeby\&quot; are test networks. |  |
| **height** | **Integer** | Represents the number of blocks in the blockchain preceding this specific block. Block numbers have no gaps. A blockchain usually starts with block 0 called the \&quot;Genesis block\&quot;. |  |
| **context** | **String** | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user. | [optional] |

### Return type

[**GetBlockDetailsByBlockHeightResponse**](GetBlockDetailsByBlockHeightResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_fee_recommendations

> <GetFeeRecommendationsResponse> get_fee_recommendations(blockchain, network, opts)

Get Fee Recommendations

Through this endpoint customers can obtain fee recommendations. Our fees recommendations are based on Mempool data which makes them much more accurate than fees based on already mined blocks. Calculations are done in real time live. Using this endpoint customers can get gas price for Ethereum, fee per byte for Bitcoin, etc.

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

api_instance = CryptoApis::UnifiedEndpointsApi.new
blockchain = 'bitcoin' # String | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc.
network = 'mainnet' # String | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \"mainnet\" is the live network with actual data while networks like \"testnet\", \"ropsten\", \"rinkeby\" are test networks.
opts = {
  context: 'context_example' # String | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. `context` is specified by the user.
}

begin
  # Get Fee Recommendations
  result = api_instance.get_fee_recommendations(blockchain, network, opts)
  p result
rescue CryptoApis::ApiError => e
  puts "Error when calling UnifiedEndpointsApi->get_fee_recommendations: #{e}"
end
```

#### Using the get_fee_recommendations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetFeeRecommendationsResponse>, Integer, Hash)> get_fee_recommendations_with_http_info(blockchain, network, opts)

```ruby
begin
  # Get Fee Recommendations
  data, status_code, headers = api_instance.get_fee_recommendations_with_http_info(blockchain, network, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetFeeRecommendationsResponse>
rescue CryptoApis::ApiError => e
  puts "Error when calling UnifiedEndpointsApi->get_fee_recommendations_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **blockchain** | **String** | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc. |  |
| **network** | **String** | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot;, \&quot;rinkeby\&quot; are test networks. |  |
| **context** | **String** | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user. | [optional] |

### Return type

[**GetFeeRecommendationsResponse**](GetFeeRecommendationsResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_latest_mined_block

> <GetLatestMinedBlockResponse> get_latest_mined_block(blockchain, network, opts)

Get Latest Mined Block

Through this endpoint customers can fetch the last mined block in a specific blockchain network, along with its details. These could include the hash of the specific, the previous and the next block, its transactions count, its height, etc.     Blockchain specific data is information such as version, nonce, size, bits, merkleroot, etc.

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

api_instance = CryptoApis::UnifiedEndpointsApi.new
blockchain = 'bitcoin' # String | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc.
network = 'mainnet' # String | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \"mainnet\" is the live network with actual data while networks like \"testnet\", \"ropsten\", \"rinkeby\" are test networks.
opts = {
  context: 'context_example' # String | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. `context` is specified by the user.
}

begin
  # Get Latest Mined Block
  result = api_instance.get_latest_mined_block(blockchain, network, opts)
  p result
rescue CryptoApis::ApiError => e
  puts "Error when calling UnifiedEndpointsApi->get_latest_mined_block: #{e}"
end
```

#### Using the get_latest_mined_block_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetLatestMinedBlockResponse>, Integer, Hash)> get_latest_mined_block_with_http_info(blockchain, network, opts)

```ruby
begin
  # Get Latest Mined Block
  data, status_code, headers = api_instance.get_latest_mined_block_with_http_info(blockchain, network, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetLatestMinedBlockResponse>
rescue CryptoApis::ApiError => e
  puts "Error when calling UnifiedEndpointsApi->get_latest_mined_block_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **blockchain** | **String** | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc. |  |
| **network** | **String** | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot;, \&quot;rinkeby\&quot; are test networks. |  |
| **context** | **String** | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user. | [optional] |

### Return type

[**GetLatestMinedBlockResponse**](GetLatestMinedBlockResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_transaction_details_by_transaction_id

> <GetTransactionDetailsByTransactionIDResponse> get_transaction_details_by_transaction_id(blockchain, network, transaction_id, opts)

Get Transaction Details By Transaction ID

Through this endpoint customers can obtain details about a transaction by the transaction's unique identifier. In UTXO-based protocols like BTC there are attributes such as `transactionId` and transaction `hash`. They still could be different. In protocols like Ethereum there is only one unique value and it's `hash`.

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

api_instance = CryptoApis::UnifiedEndpointsApi.new
blockchain = 'bitcoin' # String | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc.
network = 'mainnet' # String | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \"mainnet\" is the live network with actual data while networks like \"testnet\", \"ropsten\", \"rinkeby\" are test networks.
transaction_id = '4b66461bf88b61e1e4326356534c135129defb504c7acb2fd6c92697d79eb250' # String | Represents the unique identifier of a transaction, i.e. it could be `transactionId` in UTXO-based protocols like Bitcoin, and transaction `hash` in Ethereum blockchain.
opts = {
  context: 'context_example' # String | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. `context` is specified by the user.
}

begin
  # Get Transaction Details By Transaction ID
  result = api_instance.get_transaction_details_by_transaction_id(blockchain, network, transaction_id, opts)
  p result
rescue CryptoApis::ApiError => e
  puts "Error when calling UnifiedEndpointsApi->get_transaction_details_by_transaction_id: #{e}"
end
```

#### Using the get_transaction_details_by_transaction_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetTransactionDetailsByTransactionIDResponse>, Integer, Hash)> get_transaction_details_by_transaction_id_with_http_info(blockchain, network, transaction_id, opts)

```ruby
begin
  # Get Transaction Details By Transaction ID
  data, status_code, headers = api_instance.get_transaction_details_by_transaction_id_with_http_info(blockchain, network, transaction_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetTransactionDetailsByTransactionIDResponse>
rescue CryptoApis::ApiError => e
  puts "Error when calling UnifiedEndpointsApi->get_transaction_details_by_transaction_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **blockchain** | **String** | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc. |  |
| **network** | **String** | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot;, \&quot;rinkeby\&quot; are test networks. |  |
| **transaction_id** | **String** | Represents the unique identifier of a transaction, i.e. it could be &#x60;transactionId&#x60; in UTXO-based protocols like Bitcoin, and transaction &#x60;hash&#x60; in Ethereum blockchain. |  |
| **context** | **String** | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user. | [optional] |

### Return type

[**GetTransactionDetailsByTransactionIDResponse**](GetTransactionDetailsByTransactionIDResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_transactions_by_address

> <ListTransactionsByAddressResponse> list_transactions_by_address(blockchain, network, address, opts)

List Transactions By Address

This endpoint will list transactions by an attribute `address`. The transactions listed will detail additional information such as hash, height, time of creation in Unix timestamp, etc.

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

api_instance = CryptoApis::UnifiedEndpointsApi.new
blockchain = 'bitcoin' # String | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc.
network = 'mainnet' # String | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \"mainnet\" is the live network with actual data while networks like \"testnet\", \"ropsten\", \"rinkeby\" are test networks.
address = 'mho4jHBcrNCncKt38trJahXakuaBnS7LK5' # String | Represents the public address, which is a compressed and shortened form of a public key.
opts = {
  context: 'context_example', # String | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. `context` is specified by the user.
  limit: 50, # Integer | Defines how many items should be returned in the response per page basis.
  offset: 10 # Integer | The starting index of the response items, i.e. where the response should start listing the returned items.
}

begin
  # List Transactions By Address
  result = api_instance.list_transactions_by_address(blockchain, network, address, opts)
  p result
rescue CryptoApis::ApiError => e
  puts "Error when calling UnifiedEndpointsApi->list_transactions_by_address: #{e}"
end
```

#### Using the list_transactions_by_address_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListTransactionsByAddressResponse>, Integer, Hash)> list_transactions_by_address_with_http_info(blockchain, network, address, opts)

```ruby
begin
  # List Transactions By Address
  data, status_code, headers = api_instance.list_transactions_by_address_with_http_info(blockchain, network, address, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListTransactionsByAddressResponse>
rescue CryptoApis::ApiError => e
  puts "Error when calling UnifiedEndpointsApi->list_transactions_by_address_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **blockchain** | **String** | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc. |  |
| **network** | **String** | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot;, \&quot;rinkeby\&quot; are test networks. |  |
| **address** | **String** | Represents the public address, which is a compressed and shortened form of a public key. |  |
| **context** | **String** | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user. | [optional] |
| **limit** | **Integer** | Defines how many items should be returned in the response per page basis. | [optional][default to 50] |
| **offset** | **Integer** | The starting index of the response items, i.e. where the response should start listing the returned items. | [optional][default to 0] |

### Return type

[**ListTransactionsByAddressResponse**](ListTransactionsByAddressResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_transactions_by_block_hash

> <ListTransactionsByBlockHashResponse> list_transactions_by_block_hash(blockchain, network, block_hash, opts)

List Transactions by Block Hash

This endpoint will list transactions by an attribute `transactionHash`. The transactions listed will detail additional information such as addresses, height, time of creation in Unix timestamp, etc.

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

api_instance = CryptoApis::UnifiedEndpointsApi.new
blockchain = 'bitcoin' # String | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc.
network = 'testnet' # String | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \"mainnet\" is the live network with actual data while networks like \"testnet\", \"ropsten\", \"rinkeby\" are test networks.
block_hash = '00000000000000127080d8bcf84f4ad830a71ea0aadce3632579b6b2f26cd94b' # String | Represents the hash of the block, which is its unique identifier. It represents a cryptographic digital fingerprint made by hashing the block header twice through the SHA256 algorithm.
opts = {
  context: 'context_example', # String | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. `context` is specified by the user.
  limit: 50, # Integer | Defines how many items should be returned in the response per page basis.
  offset: 10 # Integer | The starting index of the response items, i.e. where the response should start listing the returned items.
}

begin
  # List Transactions by Block Hash
  result = api_instance.list_transactions_by_block_hash(blockchain, network, block_hash, opts)
  p result
rescue CryptoApis::ApiError => e
  puts "Error when calling UnifiedEndpointsApi->list_transactions_by_block_hash: #{e}"
end
```

#### Using the list_transactions_by_block_hash_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListTransactionsByBlockHashResponse>, Integer, Hash)> list_transactions_by_block_hash_with_http_info(blockchain, network, block_hash, opts)

```ruby
begin
  # List Transactions by Block Hash
  data, status_code, headers = api_instance.list_transactions_by_block_hash_with_http_info(blockchain, network, block_hash, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListTransactionsByBlockHashResponse>
rescue CryptoApis::ApiError => e
  puts "Error when calling UnifiedEndpointsApi->list_transactions_by_block_hash_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **blockchain** | **String** | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc. |  |
| **network** | **String** | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot;, \&quot;rinkeby\&quot; are test networks. |  |
| **block_hash** | **String** | Represents the hash of the block, which is its unique identifier. It represents a cryptographic digital fingerprint made by hashing the block header twice through the SHA256 algorithm. |  |
| **context** | **String** | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user. | [optional] |
| **limit** | **Integer** | Defines how many items should be returned in the response per page basis. | [optional][default to 50] |
| **offset** | **Integer** | The starting index of the response items, i.e. where the response should start listing the returned items. | [optional][default to 0] |

### Return type

[**ListTransactionsByBlockHashResponse**](ListTransactionsByBlockHashResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_transactions_by_block_height

> <ListTransactionsByBlockHeightResponse> list_transactions_by_block_height(blockchain, network, height, opts)

List Transactions by Block Height

This endpoint will list transactions by an attribute `blockHeight`. The transactions listed will detail additional information such as hash, addresses, time of creation in Unix timestamp, etc.

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

api_instance = CryptoApis::UnifiedEndpointsApi.new
blockchain = 'bitcoin' # String | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc.
network = 'mainnet' # String | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \"mainnet\" is the live network with actual data while networks like \"testnet\", \"ropsten\", \"rinkeby\" are test networks.
height = 673852 # Integer | Represents the number of blocks in the blockchain preceding this specific block. Block numbers have no gaps. A blockchain usually starts with block 0 called the \"Genesis block\".
opts = {
  context: 'context_example', # String | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. `context` is specified by the user.
  limit: 50, # Integer | Defines how many items should be returned in the response per page basis.
  offset: 10 # Integer | The starting index of the response items, i.e. where the response should start listing the returned items.
}

begin
  # List Transactions by Block Height
  result = api_instance.list_transactions_by_block_height(blockchain, network, height, opts)
  p result
rescue CryptoApis::ApiError => e
  puts "Error when calling UnifiedEndpointsApi->list_transactions_by_block_height: #{e}"
end
```

#### Using the list_transactions_by_block_height_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListTransactionsByBlockHeightResponse>, Integer, Hash)> list_transactions_by_block_height_with_http_info(blockchain, network, height, opts)

```ruby
begin
  # List Transactions by Block Height
  data, status_code, headers = api_instance.list_transactions_by_block_height_with_http_info(blockchain, network, height, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListTransactionsByBlockHeightResponse>
rescue CryptoApis::ApiError => e
  puts "Error when calling UnifiedEndpointsApi->list_transactions_by_block_height_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **blockchain** | **String** | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc. |  |
| **network** | **String** | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot;, \&quot;rinkeby\&quot; are test networks. |  |
| **height** | **Integer** | Represents the number of blocks in the blockchain preceding this specific block. Block numbers have no gaps. A blockchain usually starts with block 0 called the \&quot;Genesis block\&quot;. |  |
| **context** | **String** | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user. | [optional] |
| **limit** | **Integer** | Defines how many items should be returned in the response per page basis. | [optional][default to 50] |
| **offset** | **Integer** | The starting index of the response items, i.e. where the response should start listing the returned items. | [optional][default to 0] |

### Return type

[**ListTransactionsByBlockHeightResponse**](ListTransactionsByBlockHeightResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

