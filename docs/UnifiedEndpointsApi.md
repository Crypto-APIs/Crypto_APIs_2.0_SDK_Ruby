# CryptoApis::UnifiedEndpointsApi

All URIs are relative to *https://rest.cryptoapis.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**estimate_transaction_smart_fee**](UnifiedEndpointsApi.md#estimate_transaction_smart_fee) | **GET** /blockchain-data/{blockchain}/{network}/estimate-transaction-smart-fee | Estimate Transaction Smart Fee |
| [**get_address_balance**](UnifiedEndpointsApi.md#get_address_balance) | **GET** /blockchain-data/{blockchain}/{network}/addresses/{address}/balance | Get Address Balance |
| [**get_address_details**](UnifiedEndpointsApi.md#get_address_details) | **GET** /blockchain-data/{blockchain}/{network}/addresses/{address} | Get Address Details |
| [**get_block_details_by_block_hash**](UnifiedEndpointsApi.md#get_block_details_by_block_hash) | **GET** /blockchain-data/{blockchain}/{network}/blocks/hash/{blockHash} | Get Block Details By Block Hash |
| [**get_block_details_by_block_height**](UnifiedEndpointsApi.md#get_block_details_by_block_height) | **GET** /blockchain-data/{blockchain}/{network}/blocks/height/{height} | Get Block Details By Block Height |
| [**get_fee_recommendations**](UnifiedEndpointsApi.md#get_fee_recommendations) | **GET** /blockchain-data/{blockchain}/{network}/mempool/fees | Get Fee Recommendations |
| [**get_last_mined_block**](UnifiedEndpointsApi.md#get_last_mined_block) | **GET** /blockchain-data/{blockchain}/{network}/blocks/last | Get Last Mined Block |
| [**get_next_available_nonce**](UnifiedEndpointsApi.md#get_next_available_nonce) | **GET** /blockchain-data/{blockchain}/{network}/addresses/{address}/next-available-nonce | Get Next Available Nonce |
| [**get_raw_transaction_data**](UnifiedEndpointsApi.md#get_raw_transaction_data) | **GET** /blockchain-data/{blockchain}/{network}/transactions/{transactionId}/raw-data | Get Raw Transaction Data |
| [**get_transaction_details_by_transaction_id**](UnifiedEndpointsApi.md#get_transaction_details_by_transaction_id) | **GET** /blockchain-data/{blockchain}/{network}/transactions/{transactionId} | Get Transaction Details By Transaction ID |
| [**list_confirmed_tokens_transfers_by_address_and_time_range**](UnifiedEndpointsApi.md#list_confirmed_tokens_transfers_by_address_and_time_range) | **GET** /blockchain-data/{blockchain}/{network}/addresses/{address}/tokens-transfers-by-time-range | List Confirmed Tokens Transfers By Address And Time Range |
| [**list_confirmed_transactions_by_address**](UnifiedEndpointsApi.md#list_confirmed_transactions_by_address) | **GET** /blockchain-data/{blockchain}/{network}/addresses/{address}/transactions | List Confirmed Transactions By Address |
| [**list_confirmed_transactions_by_address_and_time_range**](UnifiedEndpointsApi.md#list_confirmed_transactions_by_address_and_time_range) | **GET** /blockchain-data/{blockchain}/{network}/addresses/{address}/transactions-by-time-range | List Confirmed Transactions By Address And Time Range |
| [**list_internal_transactions_by_address_and_time_range**](UnifiedEndpointsApi.md#list_internal_transactions_by_address_and_time_range) | **GET** /blockchain-data/{blockchain}/{network}/addresses/{address}/internal-by-time-range | List Internal Transactions By Address And Time Range |
| [**list_latest_mined_blocks**](UnifiedEndpointsApi.md#list_latest_mined_blocks) | **GET** /blockchain-data/{blockchain}/{network}/blocks/last/{count} | List Latest Mined Blocks |
| [**list_transactions_by_block_hash**](UnifiedEndpointsApi.md#list_transactions_by_block_hash) | **GET** /blockchain-data/{blockchain}/{network}/blocks/hash/{blockHash}/transactions | List Transactions by Block Hash |
| [**list_transactions_by_block_height**](UnifiedEndpointsApi.md#list_transactions_by_block_height) | **GET** /blockchain-data/{blockchain}/{network}/blocks/height/{height}/transactions | List Transactions by Block Height |
| [**list_unconfirmed_transactions_by_address**](UnifiedEndpointsApi.md#list_unconfirmed_transactions_by_address) | **GET** /blockchain-data/{blockchain}/{network}/address-transactions-unconfirmed/{address} | List Unconfirmed Transactions by Address |
| [**list_unspent_transaction_outputs_by_address**](UnifiedEndpointsApi.md#list_unspent_transaction_outputs_by_address) | **GET** /blockchain-data/{blockchain}/{network}/addresses/{address}/unspent-outputs | List Unspent Transaction Outputs By Address |


## estimate_transaction_smart_fee

> <EstimateTransactionSmartFeeR> estimate_transaction_smart_fee(blockchain, network, opts)

Estimate Transaction Smart Fee

Through this endpoint, customers can estimate the approximate fee per kilobyte needed for a transaction to begin confirmation within the `confirmationTarget` blocks when possible. After which it will return the number of blocks for which the estimate is valid.

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
blockchain = 'bitcoin' # String | 
network = 'testnet' # String | 
opts = {
  context: 'yourExampleString', # String | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. `context` is specified by the user.
  confirmation_target: 2, # Integer | Integer representation of confirmation target in blocks that estimation will be valid for
  estimate_mode: 'economical' # String | String representation of the address
}

begin
  # Estimate Transaction Smart Fee
  result = api_instance.estimate_transaction_smart_fee(blockchain, network, opts)
  p result
rescue CryptoApis::ApiError => e
  puts "Error when calling UnifiedEndpointsApi->estimate_transaction_smart_fee: #{e}"
end
```

#### Using the estimate_transaction_smart_fee_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EstimateTransactionSmartFeeR>, Integer, Hash)> estimate_transaction_smart_fee_with_http_info(blockchain, network, opts)

```ruby
begin
  # Estimate Transaction Smart Fee
  data, status_code, headers = api_instance.estimate_transaction_smart_fee_with_http_info(blockchain, network, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EstimateTransactionSmartFeeR>
rescue CryptoApis::ApiError => e
  puts "Error when calling UnifiedEndpointsApi->estimate_transaction_smart_fee_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **blockchain** | **String** |  |  |
| **network** | **String** |  |  |
| **context** | **String** | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user. | [optional] |
| **confirmation_target** | **Integer** | Integer representation of confirmation target in blocks that estimation will be valid for | [optional] |
| **estimate_mode** | **String** | String representation of the address | [optional] |

### Return type

[**EstimateTransactionSmartFeeR**](EstimateTransactionSmartFeeR.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_address_balance

> <GetAddressBalanceR> get_address_balance(blockchain, network, address, opts)

Get Address Balance

Through this endpoint the customer can receive the balance of a given address based on confirmed/synced blocks only. In the case where there are any incoming or outgoing unconfirmed transactions for the specific address, they will not be counted or calculated here. Applies only for coins.

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
network = 'mainnet' # String | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \"mainnet\" is the live network with actual data while networks like \"testnet\", \"ropsten\" are test networks.
address = '0x0902a667d6a3f287835e0a4593cae4167384abc6' # String | Represents the public address, which is a compressed and shortened form of a public key.
opts = {
  context: 'yourExampleString' # String | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. `context` is specified by the user.
}

begin
  # Get Address Balance
  result = api_instance.get_address_balance(blockchain, network, address, opts)
  p result
rescue CryptoApis::ApiError => e
  puts "Error when calling UnifiedEndpointsApi->get_address_balance: #{e}"
end
```

#### Using the get_address_balance_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAddressBalanceR>, Integer, Hash)> get_address_balance_with_http_info(blockchain, network, address, opts)

```ruby
begin
  # Get Address Balance
  data, status_code, headers = api_instance.get_address_balance_with_http_info(blockchain, network, address, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAddressBalanceR>
rescue CryptoApis::ApiError => e
  puts "Error when calling UnifiedEndpointsApi->get_address_balance_with_http_info: #{e}"
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

[**GetAddressBalanceR**](GetAddressBalanceR.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_address_details

> <GetAddressDetailsR> get_address_details(blockchain, network, address, opts)

Get Address Details

Through this endpoint the customer can receive basic information about a given address based on confirmed/synced blocks only. In the case where there are any incoming or outgoing **unconfirmed** transactions for the specific address, they **will not** be counted or calculated here. Applies only for coins.

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
network = 'mainnet' # String | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \"mainnet\" is the live network with actual data while networks like \"testnet\", \"ropsten\" are test networks.
address = 'mzYijhgmzZrmuB7wBDazRKirnChKyow4M3' # String | Represents the public address, which is a compressed and shortened form of a public key.
opts = {
  context: 'yourExampleString' # String | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. `context` is specified by the user.
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

> <Array(<GetAddressDetailsR>, Integer, Hash)> get_address_details_with_http_info(blockchain, network, address, opts)

```ruby
begin
  # Get Address Details
  data, status_code, headers = api_instance.get_address_details_with_http_info(blockchain, network, address, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAddressDetailsR>
rescue CryptoApis::ApiError => e
  puts "Error when calling UnifiedEndpointsApi->get_address_details_with_http_info: #{e}"
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

[**GetAddressDetailsR**](GetAddressDetailsR.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_block_details_by_block_hash

> <GetBlockDetailsByBlockHashR> get_block_details_by_block_hash(blockchain, network, block_hash, opts)

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
network = 'mainnet' # String | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \"mainnet\" is the live network with actual data while networks like \"testnet\", \"ropsten\" are test networks.
block_hash = '0000000006b3f483bec16b8a85c632bdd30a14a202c83a9148002c9ee441dd0c' # String | Represents the hash of the block, which is its unique identifier. It represents a cryptographic digital fingerprint made by hashing the block header twice through the SHA256 algorithm.
opts = {
  context: 'yourExampleString' # String | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. `context` is specified by the user.
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

> <Array(<GetBlockDetailsByBlockHashR>, Integer, Hash)> get_block_details_by_block_hash_with_http_info(blockchain, network, block_hash, opts)

```ruby
begin
  # Get Block Details By Block Hash
  data, status_code, headers = api_instance.get_block_details_by_block_hash_with_http_info(blockchain, network, block_hash, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetBlockDetailsByBlockHashR>
rescue CryptoApis::ApiError => e
  puts "Error when calling UnifiedEndpointsApi->get_block_details_by_block_hash_with_http_info: #{e}"
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

[**GetBlockDetailsByBlockHashR**](GetBlockDetailsByBlockHashR.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_block_details_by_block_height

> <GetBlockDetailsByBlockHeightR> get_block_details_by_block_height(blockchain, network, height, opts)

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
network = 'mainnet' # String | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \"mainnet\" is the live network with actual data while networks like \"testnet\", \"ropsten\" are test networks.
height = 673852 # Integer | Represents the number of blocks in the blockchain preceding this specific block. Block numbers have no gaps. A blockchain usually starts with block 0 called the \"Genesis block\".
opts = {
  context: 'yourExampleString' # String | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. `context` is specified by the user.
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

> <Array(<GetBlockDetailsByBlockHeightR>, Integer, Hash)> get_block_details_by_block_height_with_http_info(blockchain, network, height, opts)

```ruby
begin
  # Get Block Details By Block Height
  data, status_code, headers = api_instance.get_block_details_by_block_height_with_http_info(blockchain, network, height, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetBlockDetailsByBlockHeightR>
rescue CryptoApis::ApiError => e
  puts "Error when calling UnifiedEndpointsApi->get_block_details_by_block_height_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **blockchain** | **String** | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc. |  |
| **network** | **String** | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot; are test networks. |  |
| **height** | **Integer** | Represents the number of blocks in the blockchain preceding this specific block. Block numbers have no gaps. A blockchain usually starts with block 0 called the \&quot;Genesis block\&quot;. |  |
| **context** | **String** | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user. | [optional] |

### Return type

[**GetBlockDetailsByBlockHeightR**](GetBlockDetailsByBlockHeightR.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_fee_recommendations

> <GetFeeRecommendationsR> get_fee_recommendations(blockchain, network, opts)

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
network = 'mainnet' # String | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \"mainnet\" is the live network with actual data while networks like \"testnet\", \"ropsten\" are test networks.
opts = {
  context: 'yourExampleString' # String | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. `context` is specified by the user.
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

> <Array(<GetFeeRecommendationsR>, Integer, Hash)> get_fee_recommendations_with_http_info(blockchain, network, opts)

```ruby
begin
  # Get Fee Recommendations
  data, status_code, headers = api_instance.get_fee_recommendations_with_http_info(blockchain, network, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetFeeRecommendationsR>
rescue CryptoApis::ApiError => e
  puts "Error when calling UnifiedEndpointsApi->get_fee_recommendations_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **blockchain** | **String** | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc. |  |
| **network** | **String** | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot; are test networks. |  |
| **context** | **String** | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user. | [optional] |

### Return type

[**GetFeeRecommendationsR**](GetFeeRecommendationsR.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_last_mined_block

> <GetLastMinedBlockR> get_last_mined_block(blockchain, network, opts)

Get Last Mined Block

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
network = 'mainnet' # String | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \"mainnet\" is the live network with actual data while networks like \"testnet\", \"ropsten\" are test networks.
opts = {
  context: 'yourExampleString' # String | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. `context` is specified by the user.
}

begin
  # Get Last Mined Block
  result = api_instance.get_last_mined_block(blockchain, network, opts)
  p result
rescue CryptoApis::ApiError => e
  puts "Error when calling UnifiedEndpointsApi->get_last_mined_block: #{e}"
end
```

#### Using the get_last_mined_block_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetLastMinedBlockR>, Integer, Hash)> get_last_mined_block_with_http_info(blockchain, network, opts)

```ruby
begin
  # Get Last Mined Block
  data, status_code, headers = api_instance.get_last_mined_block_with_http_info(blockchain, network, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetLastMinedBlockR>
rescue CryptoApis::ApiError => e
  puts "Error when calling UnifiedEndpointsApi->get_last_mined_block_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **blockchain** | **String** | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc. |  |
| **network** | **String** | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot; are test networks. |  |
| **context** | **String** | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user. | [optional] |

### Return type

[**GetLastMinedBlockR**](GetLastMinedBlockR.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_next_available_nonce

> <GetNextAvailableNonceR> get_next_available_nonce(blockchain, network, address, opts)

Get Next Available Nonce

Through this endpoint customers can get information about the next available nonce by providing the specific blockchain, network and address.

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
blockchain = 'ethereum' # String | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc.
network = 'mainnet' # String | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \"mainnet\" is the live network with actual data while networks like \"testnet\", \"ropsten\" are test networks.
address = '0x626b046b0ce356f248b215b01b459f8b8d59e1a4' # String | Represents the public address, which is a compressed and shortened form of a public key.
opts = {
  context: 'yourExampleString' # String | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. `context` is specified by the user.
}

begin
  # Get Next Available Nonce
  result = api_instance.get_next_available_nonce(blockchain, network, address, opts)
  p result
rescue CryptoApis::ApiError => e
  puts "Error when calling UnifiedEndpointsApi->get_next_available_nonce: #{e}"
end
```

#### Using the get_next_available_nonce_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetNextAvailableNonceR>, Integer, Hash)> get_next_available_nonce_with_http_info(blockchain, network, address, opts)

```ruby
begin
  # Get Next Available Nonce
  data, status_code, headers = api_instance.get_next_available_nonce_with_http_info(blockchain, network, address, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetNextAvailableNonceR>
rescue CryptoApis::ApiError => e
  puts "Error when calling UnifiedEndpointsApi->get_next_available_nonce_with_http_info: #{e}"
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

[**GetNextAvailableNonceR**](GetNextAvailableNonceR.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_raw_transaction_data

> <GetRawTransactionDataR> get_raw_transaction_data(blockchain, network, transaction_id, opts)

Get Raw Transaction Data

Through this endpoint customers can get information on a transaction in its raw format by providing its `transactionId`.

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
network = 'mainnet' # String | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \"mainnet\" is the live network with actual data while networks like \"testnet\", \"ropsten\" are test networks.
transaction_id = '4b66461bf88b61e1e4326356534c135129defb504c7acb2fd6c92697d79eb250' # String | Represents the unique identifier of a transaction, i.e. it could be transactionId in UTXO-based protocols like Bitcoin, and transaction hash in Ethereum blockchain.
opts = {
  context: 'yourExampleString' # String | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. `context` is specified by the user.
}

begin
  # Get Raw Transaction Data
  result = api_instance.get_raw_transaction_data(blockchain, network, transaction_id, opts)
  p result
rescue CryptoApis::ApiError => e
  puts "Error when calling UnifiedEndpointsApi->get_raw_transaction_data: #{e}"
end
```

#### Using the get_raw_transaction_data_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetRawTransactionDataR>, Integer, Hash)> get_raw_transaction_data_with_http_info(blockchain, network, transaction_id, opts)

```ruby
begin
  # Get Raw Transaction Data
  data, status_code, headers = api_instance.get_raw_transaction_data_with_http_info(blockchain, network, transaction_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetRawTransactionDataR>
rescue CryptoApis::ApiError => e
  puts "Error when calling UnifiedEndpointsApi->get_raw_transaction_data_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **blockchain** | **String** | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc. |  |
| **network** | **String** | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot; are test networks. |  |
| **transaction_id** | **String** | Represents the unique identifier of a transaction, i.e. it could be transactionId in UTXO-based protocols like Bitcoin, and transaction hash in Ethereum blockchain. |  |
| **context** | **String** | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user. | [optional] |

### Return type

[**GetRawTransactionDataR**](GetRawTransactionDataR.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_transaction_details_by_transaction_id

> <GetTransactionDetailsByTransactionIDR> get_transaction_details_by_transaction_id(blockchain, network, transaction_id, opts)

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
network = 'mainnet' # String | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \"mainnet\" is the live network with actual data while networks like \"testnet\", \"ropsten\" are test networks.
transaction_id = '4b66461bf88b61e1e4326356534c135129defb504c7acb2fd6c92697d79eb250' # String | Represents the unique identifier of a transaction, i.e. it could be `transactionId` in UTXO-based protocols like Bitcoin, and transaction `hash` in Ethereum blockchain.
opts = {
  context: 'yourExampleString' # String | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. `context` is specified by the user.
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

> <Array(<GetTransactionDetailsByTransactionIDR>, Integer, Hash)> get_transaction_details_by_transaction_id_with_http_info(blockchain, network, transaction_id, opts)

```ruby
begin
  # Get Transaction Details By Transaction ID
  data, status_code, headers = api_instance.get_transaction_details_by_transaction_id_with_http_info(blockchain, network, transaction_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetTransactionDetailsByTransactionIDR>
rescue CryptoApis::ApiError => e
  puts "Error when calling UnifiedEndpointsApi->get_transaction_details_by_transaction_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **blockchain** | **String** | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc. |  |
| **network** | **String** | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot; are test networks. |  |
| **transaction_id** | **String** | Represents the unique identifier of a transaction, i.e. it could be &#x60;transactionId&#x60; in UTXO-based protocols like Bitcoin, and transaction &#x60;hash&#x60; in Ethereum blockchain. |  |
| **context** | **String** | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user. | [optional] |

### Return type

[**GetTransactionDetailsByTransactionIDR**](GetTransactionDetailsByTransactionIDR.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_confirmed_tokens_transfers_by_address_and_time_range

> <ListConfirmedTokensTransfersByAddressAndTimeRangeR> list_confirmed_tokens_transfers_by_address_and_time_range(blockchain, network, address, from_timestamp, to_timestamp, opts)

List Confirmed Tokens Transfers By Address And Time Range

Through this endpoint customers can obtain a list with **confirmed** token transfers by the `address` attribute and the query parameters `fromTimestamp` and `toTimestamp` which gives customers the opportunity to filter the results by a specified time period.    {note}This refers only to transfers done for **confirmed tokens** not coins.{/note}

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
blockchain = 'ethereum' # String | Represents the specific blockchain protocol name, e.g. Ethereum, Ethereum Classic, etc.
network = 'mainnet' # String | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \"mainnet\" is the live network with actual data while networks like \"testnet\", \"ropsten\" are test networks.
address = '0x033ef6db9fbd0ee60e2931906b987fe0280471a0' # String | Represents the public address, which is a compressed and shortened form of a public key.
from_timestamp = 1236238648 # Integer | Defines the specific time/date from which the results will start being listed.
to_timestamp = 1644417868 # Integer | Defines the specific time/date to which the results will be listed.
opts = {
  context: 'yourExampleString', # String | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. `context` is specified by the user.
  limit: 50, # Integer | Defines how many items should be returned in the response per page basis.
  offset: 0 # Integer | The starting index of the response items, i.e. where the response should start listing the returned items.
}

begin
  # List Confirmed Tokens Transfers By Address And Time Range
  result = api_instance.list_confirmed_tokens_transfers_by_address_and_time_range(blockchain, network, address, from_timestamp, to_timestamp, opts)
  p result
rescue CryptoApis::ApiError => e
  puts "Error when calling UnifiedEndpointsApi->list_confirmed_tokens_transfers_by_address_and_time_range: #{e}"
end
```

#### Using the list_confirmed_tokens_transfers_by_address_and_time_range_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListConfirmedTokensTransfersByAddressAndTimeRangeR>, Integer, Hash)> list_confirmed_tokens_transfers_by_address_and_time_range_with_http_info(blockchain, network, address, from_timestamp, to_timestamp, opts)

```ruby
begin
  # List Confirmed Tokens Transfers By Address And Time Range
  data, status_code, headers = api_instance.list_confirmed_tokens_transfers_by_address_and_time_range_with_http_info(blockchain, network, address, from_timestamp, to_timestamp, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListConfirmedTokensTransfersByAddressAndTimeRangeR>
rescue CryptoApis::ApiError => e
  puts "Error when calling UnifiedEndpointsApi->list_confirmed_tokens_transfers_by_address_and_time_range_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **blockchain** | **String** | Represents the specific blockchain protocol name, e.g. Ethereum, Ethereum Classic, etc. |  |
| **network** | **String** | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot; are test networks. |  |
| **address** | **String** | Represents the public address, which is a compressed and shortened form of a public key. |  |
| **from_timestamp** | **Integer** | Defines the specific time/date from which the results will start being listed. |  |
| **to_timestamp** | **Integer** | Defines the specific time/date to which the results will be listed. |  |
| **context** | **String** | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user. | [optional] |
| **limit** | **Integer** | Defines how many items should be returned in the response per page basis. | [optional][default to 50] |
| **offset** | **Integer** | The starting index of the response items, i.e. where the response should start listing the returned items. | [optional][default to 0] |

### Return type

[**ListConfirmedTokensTransfersByAddressAndTimeRangeR**](ListConfirmedTokensTransfersByAddressAndTimeRangeR.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_confirmed_transactions_by_address

> <ListConfirmedTransactionsByAddressR> list_confirmed_transactions_by_address(blockchain, network, address, opts)

List Confirmed Transactions By Address

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
network = 'mainnet' # String | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \"mainnet\" is the live network with actual data while networks like \"testnet\", \"ropsten\" are test networks.
address = 'mho4jHBcrNCncKt38trJahXakuaBnS7LK5' # String | Represents the public address, which is a compressed and shortened form of a public key.
opts = {
  context: 'yourExampleString', # String | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. `context` is specified by the user.
  limit: 50, # Integer | Defines how many items should be returned in the response per page basis.
  offset: 0 # Integer | The starting index of the response items, i.e. where the response should start listing the returned items.
}

begin
  # List Confirmed Transactions By Address
  result = api_instance.list_confirmed_transactions_by_address(blockchain, network, address, opts)
  p result
rescue CryptoApis::ApiError => e
  puts "Error when calling UnifiedEndpointsApi->list_confirmed_transactions_by_address: #{e}"
end
```

#### Using the list_confirmed_transactions_by_address_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListConfirmedTransactionsByAddressR>, Integer, Hash)> list_confirmed_transactions_by_address_with_http_info(blockchain, network, address, opts)

```ruby
begin
  # List Confirmed Transactions By Address
  data, status_code, headers = api_instance.list_confirmed_transactions_by_address_with_http_info(blockchain, network, address, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListConfirmedTransactionsByAddressR>
rescue CryptoApis::ApiError => e
  puts "Error when calling UnifiedEndpointsApi->list_confirmed_transactions_by_address_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **blockchain** | **String** | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc. |  |
| **network** | **String** | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot; are test networks. |  |
| **address** | **String** | Represents the public address, which is a compressed and shortened form of a public key. |  |
| **context** | **String** | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user. | [optional] |
| **limit** | **Integer** | Defines how many items should be returned in the response per page basis. | [optional][default to 50] |
| **offset** | **Integer** | The starting index of the response items, i.e. where the response should start listing the returned items. | [optional][default to 0] |

### Return type

[**ListConfirmedTransactionsByAddressR**](ListConfirmedTransactionsByAddressR.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_confirmed_transactions_by_address_and_time_range

> <ListConfirmedTransactionsByAddressAndTimeRangeR> list_confirmed_transactions_by_address_and_time_range(blockchain, network, address, from_timestamp, to_timestamp, opts)

List Confirmed Transactions By Address And Time Range

This endpoint will list confirmed transactions by the attribute `address` and the query parameters `fromTimestamp` and `toTimestamp` which gives customers the opportunity to filter the results by a specified time period.

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
network = 'mainnet' # String | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \"mainnet\" is the live network with actual data while networks like \"testnet\", \"ropsten\" are test networks.
address = 'mho4jHBcrNCncKt38trJahXakuaBnS7LK5' # String | Represents the public address, which is a compressed and shortened form of a public key.
from_timestamp = 1236238648 # Integer | Defines the specific time/date from which the results will start being listed.
to_timestamp = 1644417868 # Integer | Defines the specific time/date to which the results will be listed.
opts = {
  context: 'yourExampleString', # String | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. `context` is specified by the user.
  limit: 50, # Integer | Defines how many items should be returned in the response per page basis.
  offset: 0 # Integer | The starting index of the response items, i.e. where the response should start listing the returned items.
}

begin
  # List Confirmed Transactions By Address And Time Range
  result = api_instance.list_confirmed_transactions_by_address_and_time_range(blockchain, network, address, from_timestamp, to_timestamp, opts)
  p result
rescue CryptoApis::ApiError => e
  puts "Error when calling UnifiedEndpointsApi->list_confirmed_transactions_by_address_and_time_range: #{e}"
end
```

#### Using the list_confirmed_transactions_by_address_and_time_range_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListConfirmedTransactionsByAddressAndTimeRangeR>, Integer, Hash)> list_confirmed_transactions_by_address_and_time_range_with_http_info(blockchain, network, address, from_timestamp, to_timestamp, opts)

```ruby
begin
  # List Confirmed Transactions By Address And Time Range
  data, status_code, headers = api_instance.list_confirmed_transactions_by_address_and_time_range_with_http_info(blockchain, network, address, from_timestamp, to_timestamp, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListConfirmedTransactionsByAddressAndTimeRangeR>
rescue CryptoApis::ApiError => e
  puts "Error when calling UnifiedEndpointsApi->list_confirmed_transactions_by_address_and_time_range_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **blockchain** | **String** | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc. |  |
| **network** | **String** | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot; are test networks. |  |
| **address** | **String** | Represents the public address, which is a compressed and shortened form of a public key. |  |
| **from_timestamp** | **Integer** | Defines the specific time/date from which the results will start being listed. |  |
| **to_timestamp** | **Integer** | Defines the specific time/date to which the results will be listed. |  |
| **context** | **String** | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user. | [optional] |
| **limit** | **Integer** | Defines how many items should be returned in the response per page basis. | [optional][default to 50] |
| **offset** | **Integer** | The starting index of the response items, i.e. where the response should start listing the returned items. | [optional][default to 0] |

### Return type

[**ListConfirmedTransactionsByAddressAndTimeRangeR**](ListConfirmedTransactionsByAddressAndTimeRangeR.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_internal_transactions_by_address_and_time_range

> <ListInternalTransactionsByAddressAndTimeRangeR> list_internal_transactions_by_address_and_time_range(blockchain, network, address, from_timestamp, to_timestamp, opts)

List Internal Transactions By Address And Time Range

Through this endpoint customers can list internal transactions by the `address` attribute and the query parameters `fromTimestamp` and `toTimestamp`  which gives customers the opportunity to filter the results by a specified time period.

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
blockchain = 'ethereum' # String | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc.
network = 'mainnet' # String | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \"mainnet\" is the live network with actual data while networks like \"testnet\", \"ropsten\" are test networks.
address = '0xc8fe2ceac93ad50e496b497357ae5385192dd28d' # String | String identifier of the address document represented in CryptoAPIs
from_timestamp = 1635979828 # Integer | Defines the specific time/date from which the results will start being listed.
to_timestamp = 1643329896 # Integer | Defines the specific time/date to which the results will be listed.
opts = {
  context: 'yourExampleString', # String | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. `context` is specified by the user.
  limit: 50, # Integer | Defines how many items should be returned in the response per page basis.
  offset: 0 # Integer | The starting index of the response items, i.e. where the response should start listing the returned items.
}

begin
  # List Internal Transactions By Address And Time Range
  result = api_instance.list_internal_transactions_by_address_and_time_range(blockchain, network, address, from_timestamp, to_timestamp, opts)
  p result
rescue CryptoApis::ApiError => e
  puts "Error when calling UnifiedEndpointsApi->list_internal_transactions_by_address_and_time_range: #{e}"
end
```

#### Using the list_internal_transactions_by_address_and_time_range_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListInternalTransactionsByAddressAndTimeRangeR>, Integer, Hash)> list_internal_transactions_by_address_and_time_range_with_http_info(blockchain, network, address, from_timestamp, to_timestamp, opts)

```ruby
begin
  # List Internal Transactions By Address And Time Range
  data, status_code, headers = api_instance.list_internal_transactions_by_address_and_time_range_with_http_info(blockchain, network, address, from_timestamp, to_timestamp, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListInternalTransactionsByAddressAndTimeRangeR>
rescue CryptoApis::ApiError => e
  puts "Error when calling UnifiedEndpointsApi->list_internal_transactions_by_address_and_time_range_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **blockchain** | **String** | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc. |  |
| **network** | **String** | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot; are test networks. |  |
| **address** | **String** | String identifier of the address document represented in CryptoAPIs |  |
| **from_timestamp** | **Integer** | Defines the specific time/date from which the results will start being listed. |  |
| **to_timestamp** | **Integer** | Defines the specific time/date to which the results will be listed. |  |
| **context** | **String** | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user. | [optional] |
| **limit** | **Integer** | Defines how many items should be returned in the response per page basis. | [optional][default to 50] |
| **offset** | **Integer** | The starting index of the response items, i.e. where the response should start listing the returned items. | [optional][default to 0] |

### Return type

[**ListInternalTransactionsByAddressAndTimeRangeR**](ListInternalTransactionsByAddressAndTimeRangeR.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_latest_mined_blocks

> <ListLatestMinedBlocksR> list_latest_mined_blocks(network, blockchain, count, opts)

List Latest Mined Blocks

Through this endpoint customers can list **up to 50** from the latest blocks that were mined.

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
network = 'testnet' # String | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \"mainnet\" is the live network with actual data while networks like \"testnet\", \"ropsten\" are test networks
blockchain = 'bitcoin' # String | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc.
count = 2 # Integer | Specifies how many records were requested.
opts = {
  context: 'yourExampleString' # String | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. `context` is specified by the user.
}

begin
  # List Latest Mined Blocks
  result = api_instance.list_latest_mined_blocks(network, blockchain, count, opts)
  p result
rescue CryptoApis::ApiError => e
  puts "Error when calling UnifiedEndpointsApi->list_latest_mined_blocks: #{e}"
end
```

#### Using the list_latest_mined_blocks_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListLatestMinedBlocksR>, Integer, Hash)> list_latest_mined_blocks_with_http_info(network, blockchain, count, opts)

```ruby
begin
  # List Latest Mined Blocks
  data, status_code, headers = api_instance.list_latest_mined_blocks_with_http_info(network, blockchain, count, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListLatestMinedBlocksR>
rescue CryptoApis::ApiError => e
  puts "Error when calling UnifiedEndpointsApi->list_latest_mined_blocks_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **network** | **String** | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot; are test networks |  |
| **blockchain** | **String** | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc. |  |
| **count** | **Integer** | Specifies how many records were requested. |  |
| **context** | **String** | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user. | [optional] |

### Return type

[**ListLatestMinedBlocksR**](ListLatestMinedBlocksR.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_transactions_by_block_hash

> <ListTransactionsByBlockHashR> list_transactions_by_block_hash(blockchain, network, block_hash, opts)

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
network = 'testnet' # String | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \"mainnet\" is the live network with actual data while networks like \"testnet\", \"ropsten\" are test networks.
block_hash = '00000000000000127080d8bcf84f4ad830a71ea0aadce3632579b6b2f26cd94b' # String | Represents the hash of the block, which is its unique identifier. It represents a cryptographic digital fingerprint made by hashing the block header twice through the SHA256 algorithm.
opts = {
  context: 'yourExampleString', # String | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. `context` is specified by the user.
  limit: 50, # Integer | Defines how many items should be returned in the response per page basis.
  offset: 0 # Integer | The starting index of the response items, i.e. where the response should start listing the returned items.
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

> <Array(<ListTransactionsByBlockHashR>, Integer, Hash)> list_transactions_by_block_hash_with_http_info(blockchain, network, block_hash, opts)

```ruby
begin
  # List Transactions by Block Hash
  data, status_code, headers = api_instance.list_transactions_by_block_hash_with_http_info(blockchain, network, block_hash, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListTransactionsByBlockHashR>
rescue CryptoApis::ApiError => e
  puts "Error when calling UnifiedEndpointsApi->list_transactions_by_block_hash_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **blockchain** | **String** | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc. |  |
| **network** | **String** | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot; are test networks. |  |
| **block_hash** | **String** | Represents the hash of the block, which is its unique identifier. It represents a cryptographic digital fingerprint made by hashing the block header twice through the SHA256 algorithm. |  |
| **context** | **String** | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user. | [optional] |
| **limit** | **Integer** | Defines how many items should be returned in the response per page basis. | [optional][default to 50] |
| **offset** | **Integer** | The starting index of the response items, i.e. where the response should start listing the returned items. | [optional][default to 0] |

### Return type

[**ListTransactionsByBlockHashR**](ListTransactionsByBlockHashR.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_transactions_by_block_height

> <ListTransactionsByBlockHeightR> list_transactions_by_block_height(blockchain, network, height, opts)

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
network = 'mainnet' # String | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \"mainnet\" is the live network with actual data while networks like \"testnet\", \"ropsten\" are test networks.
height = 673852 # Integer | Represents the number of blocks in the blockchain preceding this specific block. Block numbers have no gaps. A blockchain usually starts with block 0 called the \"Genesis block\".
opts = {
  context: 'yourExampleString', # String | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. `context` is specified by the user.
  limit: 50, # Integer | Defines how many items should be returned in the response per page basis.
  offset: 0 # Integer | The starting index of the response items, i.e. where the response should start listing the returned items.
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

> <Array(<ListTransactionsByBlockHeightR>, Integer, Hash)> list_transactions_by_block_height_with_http_info(blockchain, network, height, opts)

```ruby
begin
  # List Transactions by Block Height
  data, status_code, headers = api_instance.list_transactions_by_block_height_with_http_info(blockchain, network, height, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListTransactionsByBlockHeightR>
rescue CryptoApis::ApiError => e
  puts "Error when calling UnifiedEndpointsApi->list_transactions_by_block_height_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **blockchain** | **String** | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc. |  |
| **network** | **String** | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot; are test networks. |  |
| **height** | **Integer** | Represents the number of blocks in the blockchain preceding this specific block. Block numbers have no gaps. A blockchain usually starts with block 0 called the \&quot;Genesis block\&quot;. |  |
| **context** | **String** | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user. | [optional] |
| **limit** | **Integer** | Defines how many items should be returned in the response per page basis. | [optional][default to 50] |
| **offset** | **Integer** | The starting index of the response items, i.e. where the response should start listing the returned items. | [optional][default to 0] |

### Return type

[**ListTransactionsByBlockHeightR**](ListTransactionsByBlockHeightR.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_unconfirmed_transactions_by_address

> <ListUnconfirmedTransactionsByAddressR> list_unconfirmed_transactions_by_address(blockchain, network, address, opts)

List Unconfirmed Transactions by Address

Through this endpoint customers can list transactions by `address` that are **unconfirmed**.

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
network = 'mainnet' # String | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \"mainnet\" is the live network with actual data while networks like \"testnet\", \"ropsten\" are test networks.
address = '2NDt6eztswLiVgVYaGUhkTPmugUGovVypAe' # String | Represents the public address, which is a compressed and shortened form of a public key.
opts = {
  context: 'yourExampleString', # String | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. `context` is specified by the user.
  limit: 50, # Integer | Defines how many items should be returned in the response per page basis.
  offset: 0 # Integer | The starting index of the response items, i.e. where the response should start listing the returned items.
}

begin
  # List Unconfirmed Transactions by Address
  result = api_instance.list_unconfirmed_transactions_by_address(blockchain, network, address, opts)
  p result
rescue CryptoApis::ApiError => e
  puts "Error when calling UnifiedEndpointsApi->list_unconfirmed_transactions_by_address: #{e}"
end
```

#### Using the list_unconfirmed_transactions_by_address_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListUnconfirmedTransactionsByAddressR>, Integer, Hash)> list_unconfirmed_transactions_by_address_with_http_info(blockchain, network, address, opts)

```ruby
begin
  # List Unconfirmed Transactions by Address
  data, status_code, headers = api_instance.list_unconfirmed_transactions_by_address_with_http_info(blockchain, network, address, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListUnconfirmedTransactionsByAddressR>
rescue CryptoApis::ApiError => e
  puts "Error when calling UnifiedEndpointsApi->list_unconfirmed_transactions_by_address_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **blockchain** | **String** | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc. |  |
| **network** | **String** | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot; are test networks. |  |
| **address** | **String** | Represents the public address, which is a compressed and shortened form of a public key. |  |
| **context** | **String** | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user. | [optional] |
| **limit** | **Integer** | Defines how many items should be returned in the response per page basis. | [optional][default to 50] |
| **offset** | **Integer** | The starting index of the response items, i.e. where the response should start listing the returned items. | [optional][default to 0] |

### Return type

[**ListUnconfirmedTransactionsByAddressR**](ListUnconfirmedTransactionsByAddressR.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_unspent_transaction_outputs_by_address

> <ListUnspentTransactionOutputsByAddressR> list_unspent_transaction_outputs_by_address(blockchain, network, address, opts)

List Unspent Transaction Outputs By Address

Through this endpoint customers can list their transactions' unspent outputs by `address`.

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
network = 'testnet' # String | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \"mainnet\" is the live network with actual data while networks like \"testnet\", \"ropsten\" are test networks.
address = '2MtzNEqm2D9jcbPJ5mW7Z3AUNwqt3afZH66' # String | Represents the address that has unspend funds per which the result is returned.
opts = {
  context: 'yourExampleString', # String | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. `context` is specified by the user.
  limit: 50, # Integer | Defines how many items should be returned in the response per page basis.
  offset: 0 # Integer | The starting index of the response items, i.e. where the response should start listing the returned items.
}

begin
  # List Unspent Transaction Outputs By Address
  result = api_instance.list_unspent_transaction_outputs_by_address(blockchain, network, address, opts)
  p result
rescue CryptoApis::ApiError => e
  puts "Error when calling UnifiedEndpointsApi->list_unspent_transaction_outputs_by_address: #{e}"
end
```

#### Using the list_unspent_transaction_outputs_by_address_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListUnspentTransactionOutputsByAddressR>, Integer, Hash)> list_unspent_transaction_outputs_by_address_with_http_info(blockchain, network, address, opts)

```ruby
begin
  # List Unspent Transaction Outputs By Address
  data, status_code, headers = api_instance.list_unspent_transaction_outputs_by_address_with_http_info(blockchain, network, address, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListUnspentTransactionOutputsByAddressR>
rescue CryptoApis::ApiError => e
  puts "Error when calling UnifiedEndpointsApi->list_unspent_transaction_outputs_by_address_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **blockchain** | **String** | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc. |  |
| **network** | **String** | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot; are test networks. |  |
| **address** | **String** | Represents the address that has unspend funds per which the result is returned. |  |
| **context** | **String** | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user. | [optional] |
| **limit** | **Integer** | Defines how many items should be returned in the response per page basis. | [optional][default to 50] |
| **offset** | **Integer** | The starting index of the response items, i.e. where the response should start listing the returned items. | [optional][default to 0] |

### Return type

[**ListUnspentTransactionOutputsByAddressR**](ListUnspentTransactionOutputsByAddressR.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

