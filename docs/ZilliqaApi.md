# CryptoApis::ZilliqaApi

All URIs are relative to *https://rest.cryptoapis.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_latest_mined_zilliqa_block**](ZilliqaApi.md#get_latest_mined_zilliqa_block) | **GET** /blockchain-data/zilliqa-specific/{network}/blocks/last | Get Latest Mined Zilliqa Block |
| [**get_zilliqa_address_details**](ZilliqaApi.md#get_zilliqa_address_details) | **GET** /blockchain-data/zilliqa-specific/{network}/addresses/{address} | Get Zilliqa Address Details |
| [**get_zilliqa_block_details_by_block_hash**](ZilliqaApi.md#get_zilliqa_block_details_by_block_hash) | **GET** /blockchain-data/zilliqa-specific/{network}/blocks/hash/{blockHash} | Get Zilliqa Block Details By Block Hash |
| [**get_zilliqa_block_details_by_block_height**](ZilliqaApi.md#get_zilliqa_block_details_by_block_height) | **GET** /blockchain-data/zilliqa-specific/{network}/blocks/height/{blockHeight} | Get Zilliqa Block Details By Block Height |
| [**get_zilliqa_transaction_details_by_transaction_id**](ZilliqaApi.md#get_zilliqa_transaction_details_by_transaction_id) | **GET** /blockchain-data/zilliqa-specific/{network}/transactions/{transactionHash} | Get Zilliqa Transaction Details by Transaction ID |
| [**list_zilliqa_transactions_by_address**](ZilliqaApi.md#list_zilliqa_transactions_by_address) | **GET** /blockchain-data/zilliqa-specific/{network}/addresses/{address}/transactions | List Zilliqa Transactions by Address |
| [**list_zilliqa_transactions_by_block_hash**](ZilliqaApi.md#list_zilliqa_transactions_by_block_hash) | **GET** /blockchain-data/zilliqa-specific/{network}/blocks/hash/{blockHash}/transactions | List Zilliqa Transactions By Block Hash |
| [**list_zilliqa_transactions_by_block_height**](ZilliqaApi.md#list_zilliqa_transactions_by_block_height) | **GET** /blockchain-data/zilliqa-specific/{network}/blocks/height/{blockHeight}/transactions | List Zilliqa Transactions By Block Height |


## get_latest_mined_zilliqa_block

> <GetLatestMinedZilliqaBlockR> get_latest_mined_zilliqa_block(network, opts)

Get Latest Mined Zilliqa Block

Through this endpoint users can obtain information on the latest block that has been mined on the Zilliqa blockchain. Data could include the current and previous block hashes, transaction count, and more.

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

api_instance = CryptoApis::ZilliqaApi.new
network = 'mainnet' # String | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \"mainnet\" is the live network with actual data while networks like \"testnet\", \"ropsten\" are test networks.
opts = {
  context: 'yourExampleString' # String | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. `context` is specified by the user.
}

begin
  # Get Latest Mined Zilliqa Block
  result = api_instance.get_latest_mined_zilliqa_block(network, opts)
  p result
rescue CryptoApis::ApiError => e
  puts "Error when calling ZilliqaApi->get_latest_mined_zilliqa_block: #{e}"
end
```

#### Using the get_latest_mined_zilliqa_block_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetLatestMinedZilliqaBlockR>, Integer, Hash)> get_latest_mined_zilliqa_block_with_http_info(network, opts)

```ruby
begin
  # Get Latest Mined Zilliqa Block
  data, status_code, headers = api_instance.get_latest_mined_zilliqa_block_with_http_info(network, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetLatestMinedZilliqaBlockR>
rescue CryptoApis::ApiError => e
  puts "Error when calling ZilliqaApi->get_latest_mined_zilliqa_block_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **network** | **String** | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot; are test networks. |  |
| **context** | **String** | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user. | [optional] |

### Return type

[**GetLatestMinedZilliqaBlockR**](GetLatestMinedZilliqaBlockR.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_zilliqa_address_details

> <GetZilliqaAddressDetailsR> get_zilliqa_address_details(network, address, opts)

Get Zilliqa Address Details

Through this endpoint customers can obtain information address details from the Zilliqa blockchain.

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

api_instance = CryptoApis::ZilliqaApi.new
network = 'mainnet' # String | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \"mainnet\" is the live network with actual data while networks like \"testnet\", \"ropsten\" are test networks.
address = 'zil17v9gs6ctn9pq6wka8k668umdlaj88nrfej7rnm' # String | Defines the specific transaction's address.
opts = {
  context: 'yourExampleString' # String | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. `context` is specified by the user.
}

begin
  # Get Zilliqa Address Details
  result = api_instance.get_zilliqa_address_details(network, address, opts)
  p result
rescue CryptoApis::ApiError => e
  puts "Error when calling ZilliqaApi->get_zilliqa_address_details: #{e}"
end
```

#### Using the get_zilliqa_address_details_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetZilliqaAddressDetailsR>, Integer, Hash)> get_zilliqa_address_details_with_http_info(network, address, opts)

```ruby
begin
  # Get Zilliqa Address Details
  data, status_code, headers = api_instance.get_zilliqa_address_details_with_http_info(network, address, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetZilliqaAddressDetailsR>
rescue CryptoApis::ApiError => e
  puts "Error when calling ZilliqaApi->get_zilliqa_address_details_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **network** | **String** | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot; are test networks. |  |
| **address** | **String** | Defines the specific transaction&#39;s address. |  |
| **context** | **String** | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user. | [optional] |

### Return type

[**GetZilliqaAddressDetailsR**](GetZilliqaAddressDetailsR.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_zilliqa_block_details_by_block_hash

> <GetZilliqaBlockDetailsByBlockHashR> get_zilliqa_block_details_by_block_hash(network, block_hash, opts)

Get Zilliqa Block Details By Block Hash

Through this endpoint customers can obtain block details from the Zilliqa blockchain by providing the block Hash parameter.

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

api_instance = CryptoApis::ZilliqaApi.new
network = 'mainnet' # String | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \"mainnet\" is the live network with actual data while networks like \"testnet\", \"ropsten\" are test networks.
block_hash = '0xf679d0b5387f0b0b3c3c1f368305512b23860888ba4415063d464a09b8bb6205' # String | Represents the hash of the block, which is its unique identifier. It represents a cryptographic digital fingerprint made by hashing the block header twice through the SHA256 algorithm.
opts = {
  context: 'yourExampleString' # String | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. `context` is specified by the user.
}

begin
  # Get Zilliqa Block Details By Block Hash
  result = api_instance.get_zilliqa_block_details_by_block_hash(network, block_hash, opts)
  p result
rescue CryptoApis::ApiError => e
  puts "Error when calling ZilliqaApi->get_zilliqa_block_details_by_block_hash: #{e}"
end
```

#### Using the get_zilliqa_block_details_by_block_hash_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetZilliqaBlockDetailsByBlockHashR>, Integer, Hash)> get_zilliqa_block_details_by_block_hash_with_http_info(network, block_hash, opts)

```ruby
begin
  # Get Zilliqa Block Details By Block Hash
  data, status_code, headers = api_instance.get_zilliqa_block_details_by_block_hash_with_http_info(network, block_hash, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetZilliqaBlockDetailsByBlockHashR>
rescue CryptoApis::ApiError => e
  puts "Error when calling ZilliqaApi->get_zilliqa_block_details_by_block_hash_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **network** | **String** | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot; are test networks. |  |
| **block_hash** | **String** | Represents the hash of the block, which is its unique identifier. It represents a cryptographic digital fingerprint made by hashing the block header twice through the SHA256 algorithm. |  |
| **context** | **String** | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user. | [optional] |

### Return type

[**GetZilliqaBlockDetailsByBlockHashR**](GetZilliqaBlockDetailsByBlockHashR.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_zilliqa_block_details_by_block_height

> <GetZilliqaBlockDetailsByBlockHeightR> get_zilliqa_block_details_by_block_height(network, block_height, opts)

Get Zilliqa Block Details By Block Height

Through this endpoint customers can obtain block details from the Zilliqa blockchain by providing the block Height parameter.

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

api_instance = CryptoApis::ZilliqaApi.new
network = 'mainnet' # String | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \"mainnet\" is the live network with actual data while networks like \"testnet\", \"ropsten\" are test networks.
block_height = 1244298 # Integer | Represents the number of blocks in the blockchain preceding this specific block. Block numbers have no gaps. A blockchain usually starts with block 0 called the \"Genesis block\".
opts = {
  context: 'yourExampleString' # String | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. `context` is specified by the user.
}

begin
  # Get Zilliqa Block Details By Block Height
  result = api_instance.get_zilliqa_block_details_by_block_height(network, block_height, opts)
  p result
rescue CryptoApis::ApiError => e
  puts "Error when calling ZilliqaApi->get_zilliqa_block_details_by_block_height: #{e}"
end
```

#### Using the get_zilliqa_block_details_by_block_height_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetZilliqaBlockDetailsByBlockHeightR>, Integer, Hash)> get_zilliqa_block_details_by_block_height_with_http_info(network, block_height, opts)

```ruby
begin
  # Get Zilliqa Block Details By Block Height
  data, status_code, headers = api_instance.get_zilliqa_block_details_by_block_height_with_http_info(network, block_height, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetZilliqaBlockDetailsByBlockHeightR>
rescue CryptoApis::ApiError => e
  puts "Error when calling ZilliqaApi->get_zilliqa_block_details_by_block_height_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **network** | **String** | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot; are test networks. |  |
| **block_height** | **Integer** | Represents the number of blocks in the blockchain preceding this specific block. Block numbers have no gaps. A blockchain usually starts with block 0 called the \&quot;Genesis block\&quot;. |  |
| **context** | **String** | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user. | [optional] |

### Return type

[**GetZilliqaBlockDetailsByBlockHeightR**](GetZilliqaBlockDetailsByBlockHeightR.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_zilliqa_transaction_details_by_transaction_id

> <GetZilliqaTransactionDetailsByTransactionIDR> get_zilliqa_transaction_details_by_transaction_id(network, transaction_hash, opts)

Get Zilliqa Transaction Details by Transaction ID

Through this endpoint customers can obtain transaction details on the Zilliqa blockchain by providing a Transaction ID parameter.

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

api_instance = CryptoApis::ZilliqaApi.new
network = 'mainnet' # String | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \"mainnet\" is the live network with actual data while networks like \"testnet\", \"ropsten\" are test networks.
transaction_hash = '0xe649afbe2849c70a7a8b3087bee2c7b2fa0b6b77ab658b4fff390a1d06f0a8bc' # String | String identifier of the transaction
opts = {
  context: 'yourExampleString' # String | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. `context` is specified by the user.
}

begin
  # Get Zilliqa Transaction Details by Transaction ID
  result = api_instance.get_zilliqa_transaction_details_by_transaction_id(network, transaction_hash, opts)
  p result
rescue CryptoApis::ApiError => e
  puts "Error when calling ZilliqaApi->get_zilliqa_transaction_details_by_transaction_id: #{e}"
end
```

#### Using the get_zilliqa_transaction_details_by_transaction_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetZilliqaTransactionDetailsByTransactionIDR>, Integer, Hash)> get_zilliqa_transaction_details_by_transaction_id_with_http_info(network, transaction_hash, opts)

```ruby
begin
  # Get Zilliqa Transaction Details by Transaction ID
  data, status_code, headers = api_instance.get_zilliqa_transaction_details_by_transaction_id_with_http_info(network, transaction_hash, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetZilliqaTransactionDetailsByTransactionIDR>
rescue CryptoApis::ApiError => e
  puts "Error when calling ZilliqaApi->get_zilliqa_transaction_details_by_transaction_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **network** | **String** | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot; are test networks. |  |
| **transaction_hash** | **String** | String identifier of the transaction |  |
| **context** | **String** | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user. | [optional] |

### Return type

[**GetZilliqaTransactionDetailsByTransactionIDR**](GetZilliqaTransactionDetailsByTransactionIDR.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_zilliqa_transactions_by_address

> <ListZilliqaTransactionsByAddressR> list_zilliqa_transactions_by_address(network, address, opts)

List Zilliqa Transactions by Address

Through this endpoint customers can list transactions on the Zilliqa blockchain by the address parameter.

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

api_instance = CryptoApis::ZilliqaApi.new
network = 'mainnet' # String | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \"mainnet\" is the live network with actual data while networks like \"testnet\", \"ropsten\" are test networks.
address = 'zil17v9gs6ctn9pq6wka8k668umdlaj88nrfej7rnm' # String | Defines the specific address of the sender.
opts = {
  context: 'yourExampleString', # String | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. `context` is specified by the user.
  limit: 50, # Integer | Defines how many items should be returned in the response per page basis.
  offset: 0 # Integer | The starting index of the response items, i.e. where the response should start listing the returned items.
}

begin
  # List Zilliqa Transactions by Address
  result = api_instance.list_zilliqa_transactions_by_address(network, address, opts)
  p result
rescue CryptoApis::ApiError => e
  puts "Error when calling ZilliqaApi->list_zilliqa_transactions_by_address: #{e}"
end
```

#### Using the list_zilliqa_transactions_by_address_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListZilliqaTransactionsByAddressR>, Integer, Hash)> list_zilliqa_transactions_by_address_with_http_info(network, address, opts)

```ruby
begin
  # List Zilliqa Transactions by Address
  data, status_code, headers = api_instance.list_zilliqa_transactions_by_address_with_http_info(network, address, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListZilliqaTransactionsByAddressR>
rescue CryptoApis::ApiError => e
  puts "Error when calling ZilliqaApi->list_zilliqa_transactions_by_address_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **network** | **String** | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot; are test networks. |  |
| **address** | **String** | Defines the specific address of the sender. |  |
| **context** | **String** | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user. | [optional] |
| **limit** | **Integer** | Defines how many items should be returned in the response per page basis. | [optional][default to 50] |
| **offset** | **Integer** | The starting index of the response items, i.e. where the response should start listing the returned items. | [optional][default to 0] |

### Return type

[**ListZilliqaTransactionsByAddressR**](ListZilliqaTransactionsByAddressR.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_zilliqa_transactions_by_block_hash

> <ListZilliqaTransactionsByBlockHashR> list_zilliqa_transactions_by_block_hash(network, block_hash, opts)

List Zilliqa Transactions By Block Hash

Through this endpoint customers can list transactions on the Zilliqa blockchain by the block hash parameter.

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

api_instance = CryptoApis::ZilliqaApi.new
network = 'mainnet' # String | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \"mainnet\" is the live network with actual data while networks like \"testnet\", \"ropsten\" are test networks.
block_hash = '0x3160ca05ac12f60023de6b6987596eccbf084629f1a92b59534c5c021bf27041' # String | Represents the hash of the block, which is its unique identifier. It represents a cryptographic digital fingerprint made by hashing the block header twice through the SHA256 algorithm.
opts = {
  context: 'yourExampleString', # String | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. `context` is specified by the user.
  limit: 50, # Integer | Defines how many items should be returned in the response per page basis.
  offset: 0 # Integer | The starting index of the response items, i.e. where the response should start listing the returned items.
}

begin
  # List Zilliqa Transactions By Block Hash
  result = api_instance.list_zilliqa_transactions_by_block_hash(network, block_hash, opts)
  p result
rescue CryptoApis::ApiError => e
  puts "Error when calling ZilliqaApi->list_zilliqa_transactions_by_block_hash: #{e}"
end
```

#### Using the list_zilliqa_transactions_by_block_hash_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListZilliqaTransactionsByBlockHashR>, Integer, Hash)> list_zilliqa_transactions_by_block_hash_with_http_info(network, block_hash, opts)

```ruby
begin
  # List Zilliqa Transactions By Block Hash
  data, status_code, headers = api_instance.list_zilliqa_transactions_by_block_hash_with_http_info(network, block_hash, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListZilliqaTransactionsByBlockHashR>
rescue CryptoApis::ApiError => e
  puts "Error when calling ZilliqaApi->list_zilliqa_transactions_by_block_hash_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **network** | **String** | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot; are test networks. |  |
| **block_hash** | **String** | Represents the hash of the block, which is its unique identifier. It represents a cryptographic digital fingerprint made by hashing the block header twice through the SHA256 algorithm. |  |
| **context** | **String** | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user. | [optional] |
| **limit** | **Integer** | Defines how many items should be returned in the response per page basis. | [optional][default to 50] |
| **offset** | **Integer** | The starting index of the response items, i.e. where the response should start listing the returned items. | [optional][default to 0] |

### Return type

[**ListZilliqaTransactionsByBlockHashR**](ListZilliqaTransactionsByBlockHashR.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_zilliqa_transactions_by_block_height

> <ListZilliqaTransactionsByBlockHeightR> list_zilliqa_transactions_by_block_height(network, block_height, opts)

List Zilliqa Transactions By Block Height

Through this endpoint customers can list transactions on the Zilliqa blockchain by the block height parameter.

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

api_instance = CryptoApis::ZilliqaApi.new
network = 'mainnet' # String | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \"mainnet\" is the live network with actual data while networks like \"testnet\", \"ropsten\" are test networks.
block_height = 1250392 # Integer | Represents the number of blocks in the blockchain preceding this specific block. Block numbers have no gaps. A blockchain usually starts with block 0 called the \"Genesis block\".
opts = {
  context: 'yourExampleString', # String | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. `context` is specified by the user.
  limit: 50, # Integer | Defines how many items should be returned in the response per page basis.
  offset: 0 # Integer | The starting index of the response items, i.e. where the response should start listing the returned items.
}

begin
  # List Zilliqa Transactions By Block Height
  result = api_instance.list_zilliqa_transactions_by_block_height(network, block_height, opts)
  p result
rescue CryptoApis::ApiError => e
  puts "Error when calling ZilliqaApi->list_zilliqa_transactions_by_block_height: #{e}"
end
```

#### Using the list_zilliqa_transactions_by_block_height_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListZilliqaTransactionsByBlockHeightR>, Integer, Hash)> list_zilliqa_transactions_by_block_height_with_http_info(network, block_height, opts)

```ruby
begin
  # List Zilliqa Transactions By Block Height
  data, status_code, headers = api_instance.list_zilliqa_transactions_by_block_height_with_http_info(network, block_height, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListZilliqaTransactionsByBlockHeightR>
rescue CryptoApis::ApiError => e
  puts "Error when calling ZilliqaApi->list_zilliqa_transactions_by_block_height_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **network** | **String** | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot; are test networks. |  |
| **block_height** | **Integer** | Represents the number of blocks in the blockchain preceding this specific block. Block numbers have no gaps. A blockchain usually starts with block 0 called the \&quot;Genesis block\&quot;. |  |
| **context** | **String** | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user. | [optional] |
| **limit** | **Integer** | Defines how many items should be returned in the response per page basis. | [optional][default to 50] |
| **offset** | **Integer** | The starting index of the response items, i.e. where the response should start listing the returned items. | [optional][default to 0] |

### Return type

[**ListZilliqaTransactionsByBlockHeightR**](ListZilliqaTransactionsByBlockHeightR.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

