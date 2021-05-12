# OpenapiClient::OmniLayerApi

All URIs are relative to *https://rest.cryptoapis.io/v2*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_omni_transaction_details_by_transaction_id__txid**](OmniLayerApi.md#get_omni_transaction_details_by_transaction_id__txid) | **GET** /blockchain-data/{blockchain}/{network}/omni/transactions/{transactionId} | Get Omni Transaction Details By Transaction ID (Txid) |
| [**get_unconfirmed_omni_transaction_by_transaction_id__txid**](OmniLayerApi.md#get_unconfirmed_omni_transaction_by_transaction_id__txid) | **GET** /blockchain-data/{blockchain}/{network}/omni/transactions-unconfirmed/{transactionId} | Get Unconfirmed Omni Transaction By Transaction ID (Txid) |
| [**list_omni_tokens_by_address**](OmniLayerApi.md#list_omni_tokens_by_address) | **GET** /blockchain-data/{blockchain}/{network}/omni/addresses/{address} | List Omni Tokens By Address |
| [**list_omni_transactions_by_address**](OmniLayerApi.md#list_omni_transactions_by_address) | **GET** /blockchain-data/{blockchain}/{network}/omni/addresses/{address}/transactions | List Omni Transactions By Address |
| [**list_omni_transactions_by_block_hash**](OmniLayerApi.md#list_omni_transactions_by_block_hash) | **GET** /blockchain-data/{blockchain}/{network}/omni/blocks/hash/{blockHash}/transactions | List Omni Transactions By Block Hash |
| [**list_omni_transactions_by_block_height**](OmniLayerApi.md#list_omni_transactions_by_block_height) | **GET** /blockchain-data/{blockchain}/{network}/omni/blocks/height/{blockHeight}/transactions | List Omni Transactions By Block Height |
| [**list_unconfirmed_omni_transactions_by_address**](OmniLayerApi.md#list_unconfirmed_omni_transactions_by_address) | **GET** /blockchain-data/{blockchain}/{network}/omni/address-transactions-unconfirmed/{address} | List Unconfirmed Omni Transactions By Address |
| [**list_unconfirmed_omni_transactions_by_property_id**](OmniLayerApi.md#list_unconfirmed_omni_transactions_by_property_id) | **GET** /blockchain-data/{blockchain}/{network}/omni/properties/{propertyId}/transactions | List Unconfirmed Omni Transactions By Property ID |


## get_omni_transaction_details_by_transaction_id__txid

> <GetOmniTransactionDetailsByTransactionIDTxidResponse> get_omni_transaction_details_by_transaction_id__txid(network, blockchain, transaction_id, opts)

Get Omni Transaction Details By Transaction ID (Txid)

Through this endpoint customers can obtain details about an Omni transaction by the transaction's unique identifier. The transaction can return information such as hash, height, time of creation in Unix timestamp, etc.

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

api_instance = OpenapiClient::OmniLayerApi.new
network = 'mainnet' # String | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \"mainnet\" is the live network with actual data while networks like \"testnet\", \"ropsten\", \"rinkeby\" are test networks.
blockchain = 'bitcoin' # String | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc.
transaction_id = 'd237ff4a681617b767bf22c4e1e8f5115b95c8c168d6cf53bbdec68529f91ecb' # String | Represents the unique identifier of a transaction, i.e. it could be `transactionId` in UTXO-based protocols like Bitcoin, and transaction `hash` in Ethereum blockchain.
opts = {
  context: 'context_example' # String | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. `context` is specified by the user.
}

begin
  # Get Omni Transaction Details By Transaction ID (Txid)
  result = api_instance.get_omni_transaction_details_by_transaction_id__txid(network, blockchain, transaction_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling OmniLayerApi->get_omni_transaction_details_by_transaction_id__txid: #{e}"
end
```

#### Using the get_omni_transaction_details_by_transaction_id__txid_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetOmniTransactionDetailsByTransactionIDTxidResponse>, Integer, Hash)> get_omni_transaction_details_by_transaction_id__txid_with_http_info(network, blockchain, transaction_id, opts)

```ruby
begin
  # Get Omni Transaction Details By Transaction ID (Txid)
  data, status_code, headers = api_instance.get_omni_transaction_details_by_transaction_id__txid_with_http_info(network, blockchain, transaction_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetOmniTransactionDetailsByTransactionIDTxidResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling OmniLayerApi->get_omni_transaction_details_by_transaction_id__txid_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **network** | **String** | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot;, \&quot;rinkeby\&quot; are test networks. |  |
| **blockchain** | **String** | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc. |  |
| **transaction_id** | **String** | Represents the unique identifier of a transaction, i.e. it could be &#x60;transactionId&#x60; in UTXO-based protocols like Bitcoin, and transaction &#x60;hash&#x60; in Ethereum blockchain. |  |
| **context** | **String** | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user. | [optional] |

### Return type

[**GetOmniTransactionDetailsByTransactionIDTxidResponse**](GetOmniTransactionDetailsByTransactionIDTxidResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_unconfirmed_omni_transaction_by_transaction_id__txid

> <GetUnconfirmedOmniTransactionByTransactionIDTxidResponse> get_unconfirmed_omni_transaction_by_transaction_id__txid(network, blockchain, transaction_id, opts)

Get Unconfirmed Omni Transaction By Transaction ID (Txid)

Through this endpoint customers can obtain information on unconfirmed Omni transactions by an attribute `transactionId`. The transaction can have information such as hash, height, time of creation in Unix timestamp, etc.    Unconfirmed transactions are usually put in the Mempool and await verification so that they can be added to a block.

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

api_instance = OpenapiClient::OmniLayerApi.new
network = 'mainnet' # String | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \"mainnet\" is the live network with actual data while networks like \"testnet\", \"ropsten\", \"rinkeby\" are test networks.
blockchain = 'bitcoin' # String | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc.
transaction_id = '92f17d3d16a1baf7de570a86179cc263cb9866c66778feec2dce111430f41c08' # String | Represents the unique identifier of a transaction, i.e. it could be `transactionId` in UTXO-based protocols like Bitcoin, and transaction `hash` in Ethereum blockchain.
opts = {
  context: 'context_example' # String | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. `context` is specified by the user.
}

begin
  # Get Unconfirmed Omni Transaction By Transaction ID (Txid)
  result = api_instance.get_unconfirmed_omni_transaction_by_transaction_id__txid(network, blockchain, transaction_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling OmniLayerApi->get_unconfirmed_omni_transaction_by_transaction_id__txid: #{e}"
end
```

#### Using the get_unconfirmed_omni_transaction_by_transaction_id__txid_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetUnconfirmedOmniTransactionByTransactionIDTxidResponse>, Integer, Hash)> get_unconfirmed_omni_transaction_by_transaction_id__txid_with_http_info(network, blockchain, transaction_id, opts)

```ruby
begin
  # Get Unconfirmed Omni Transaction By Transaction ID (Txid)
  data, status_code, headers = api_instance.get_unconfirmed_omni_transaction_by_transaction_id__txid_with_http_info(network, blockchain, transaction_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetUnconfirmedOmniTransactionByTransactionIDTxidResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling OmniLayerApi->get_unconfirmed_omni_transaction_by_transaction_id__txid_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **network** | **String** | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot;, \&quot;rinkeby\&quot; are test networks. |  |
| **blockchain** | **String** | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc. |  |
| **transaction_id** | **String** | Represents the unique identifier of a transaction, i.e. it could be &#x60;transactionId&#x60; in UTXO-based protocols like Bitcoin, and transaction &#x60;hash&#x60; in Ethereum blockchain. |  |
| **context** | **String** | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user. | [optional] |

### Return type

[**GetUnconfirmedOmniTransactionByTransactionIDTxidResponse**](GetUnconfirmedOmniTransactionByTransactionIDTxidResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_omni_tokens_by_address

> <ListOmniTokensByAddressResponse> list_omni_tokens_by_address(network, blockchain, address, opts)

List Omni Tokens By Address

Through this endpoint the customer can receive basic information about a given Omni address based on confirmed/synced blocks only. In the case where there are any incoming or outgoing **unconfirmed** transactions for the specific address, they **will not** be counted or calculated here.

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

api_instance = OpenapiClient::OmniLayerApi.new
network = 'mainnet' # String | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \"mainnet\" is the live network with actual data while networks like \"testnet\", \"ropsten\", \"rinkeby\" are test networks.
blockchain = 'bitcoin' # String | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc.
address = 'mi7iSsKcvyFYNsiYdDZqJmH75RmoHomwmo' # String | Represents the public address, which is a compressed and shortened form of a public key.
opts = {
  context: 'context_example' # String | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. `context` is specified by the user.
}

begin
  # List Omni Tokens By Address
  result = api_instance.list_omni_tokens_by_address(network, blockchain, address, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling OmniLayerApi->list_omni_tokens_by_address: #{e}"
end
```

#### Using the list_omni_tokens_by_address_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListOmniTokensByAddressResponse>, Integer, Hash)> list_omni_tokens_by_address_with_http_info(network, blockchain, address, opts)

```ruby
begin
  # List Omni Tokens By Address
  data, status_code, headers = api_instance.list_omni_tokens_by_address_with_http_info(network, blockchain, address, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListOmniTokensByAddressResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling OmniLayerApi->list_omni_tokens_by_address_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **network** | **String** | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot;, \&quot;rinkeby\&quot; are test networks. |  |
| **blockchain** | **String** | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc. |  |
| **address** | **String** | Represents the public address, which is a compressed and shortened form of a public key. |  |
| **context** | **String** | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user. | [optional] |

### Return type

[**ListOmniTokensByAddressResponse**](ListOmniTokensByAddressResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_omni_transactions_by_address

> <ListOmniTransactionsByAddressResponse> list_omni_transactions_by_address(network, blockchain, address, opts)

List Omni Transactions By Address

This endpoint will list Omni transactions by an attribute `address`. The transactions listed will detail additional information such as hash, height, time of creation in Unix timestamp, etc.

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

api_instance = OpenapiClient::OmniLayerApi.new
network = 'mainnet' # String | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \"mainnet\" is the live network with actual data while networks like \"testnet\", \"ropsten\", \"rinkeby\" are test networks.
blockchain = 'bitcoin' # String | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc.
address = 'mi7iSsKcvyFYNsiYdDZqJmH75RmoHomwmo' # String | Represents the public address, which is a compressed and shortened form of a public key.
opts = {
  context: 'context_example', # String | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. `context` is specified by the user.
  limit: 50, # Integer | Defines how many items should be returned in the response per page basis.
  offset: 10 # Integer | The starting index of the response items, i.e. where the response should start listing the returned items.
}

begin
  # List Omni Transactions By Address
  result = api_instance.list_omni_transactions_by_address(network, blockchain, address, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling OmniLayerApi->list_omni_transactions_by_address: #{e}"
end
```

#### Using the list_omni_transactions_by_address_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListOmniTransactionsByAddressResponse>, Integer, Hash)> list_omni_transactions_by_address_with_http_info(network, blockchain, address, opts)

```ruby
begin
  # List Omni Transactions By Address
  data, status_code, headers = api_instance.list_omni_transactions_by_address_with_http_info(network, blockchain, address, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListOmniTransactionsByAddressResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling OmniLayerApi->list_omni_transactions_by_address_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **network** | **String** | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot;, \&quot;rinkeby\&quot; are test networks. |  |
| **blockchain** | **String** | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc. |  |
| **address** | **String** | Represents the public address, which is a compressed and shortened form of a public key. |  |
| **context** | **String** | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user. | [optional] |
| **limit** | **Integer** | Defines how many items should be returned in the response per page basis. | [optional][default to 50] |
| **offset** | **Integer** | The starting index of the response items, i.e. where the response should start listing the returned items. | [optional][default to 0] |

### Return type

[**ListOmniTransactionsByAddressResponse**](ListOmniTransactionsByAddressResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_omni_transactions_by_block_hash

> <ListOmniTransactionsByBlockHashResponse> list_omni_transactions_by_block_hash(network, blockchain, block_hash, opts)

List Omni Transactions By Block Hash

This endpoint will list Omni transactions by an attribute `transactionHash`. The transactions listed will detail additional information such as addresses, height, time of creation in Unix timestamp, etc.

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

api_instance = OpenapiClient::OmniLayerApi.new
network = 'mainnet' # String | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \"mainnet\" is the live network with actual data while networks like \"testnet\", \"ropsten\", \"rinkeby\" are test networks.
blockchain = 'bitcoin' # String | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc.
block_hash = '000000000000001f50c9d33d122562daa7fc9582df0b415e626216c37d015818' # String | Represents the hash of the block, which is its unique identifier. It represents a cryptographic digital fingerprint made by hashing the block header twice through the SHA256 algorithm.
opts = {
  context: 'context_example', # String | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. `context` is specified by the user.
  limit: 50, # Integer | Defines how many items should be returned in the response per page basis.
  offset: 10 # Integer | The starting index of the response items, i.e. where the response should start listing the returned items.
}

begin
  # List Omni Transactions By Block Hash
  result = api_instance.list_omni_transactions_by_block_hash(network, blockchain, block_hash, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling OmniLayerApi->list_omni_transactions_by_block_hash: #{e}"
end
```

#### Using the list_omni_transactions_by_block_hash_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListOmniTransactionsByBlockHashResponse>, Integer, Hash)> list_omni_transactions_by_block_hash_with_http_info(network, blockchain, block_hash, opts)

```ruby
begin
  # List Omni Transactions By Block Hash
  data, status_code, headers = api_instance.list_omni_transactions_by_block_hash_with_http_info(network, blockchain, block_hash, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListOmniTransactionsByBlockHashResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling OmniLayerApi->list_omni_transactions_by_block_hash_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **network** | **String** | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot;, \&quot;rinkeby\&quot; are test networks. |  |
| **blockchain** | **String** | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc. |  |
| **block_hash** | **String** | Represents the hash of the block, which is its unique identifier. It represents a cryptographic digital fingerprint made by hashing the block header twice through the SHA256 algorithm. |  |
| **context** | **String** | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user. | [optional] |
| **limit** | **Integer** | Defines how many items should be returned in the response per page basis. | [optional][default to 50] |
| **offset** | **Integer** | The starting index of the response items, i.e. where the response should start listing the returned items. | [optional][default to 0] |

### Return type

[**ListOmniTransactionsByBlockHashResponse**](ListOmniTransactionsByBlockHashResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_omni_transactions_by_block_height

> <ListOmniTransactionsByBlockHeightResponse> list_omni_transactions_by_block_height(network, blockchain, block_height, opts)

List Omni Transactions By Block Height

This endpoint will list Omni transactions by an attribute `blockHeight`. The transactions listed will detail additional information such as hash, addresses, time of creation in Unix timestamp, etc.

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

api_instance = OpenapiClient::OmniLayerApi.new
network = 'mainnet' # String | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \"mainnet\" is the live network with actual data while networks like \"testnet\", \"ropsten\", \"rinkeby\" are test networks.
blockchain = 'bitcoin' # String | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc.
block_height = '1941222' # String | Represents the number of blocks in the blockchain preceding this specific block. Block numbers have no gaps. A blockchain usually starts with block 0 called the \"Genesis block\".
opts = {
  context: 'context_example', # String | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. `context` is specified by the user.
  limit: 50, # Integer | Defines how many items should be returned in the response per page basis.
  offset: 10 # Integer | The starting index of the response items, i.e. where the response should start listing the returned items.
}

begin
  # List Omni Transactions By Block Height
  result = api_instance.list_omni_transactions_by_block_height(network, blockchain, block_height, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling OmniLayerApi->list_omni_transactions_by_block_height: #{e}"
end
```

#### Using the list_omni_transactions_by_block_height_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListOmniTransactionsByBlockHeightResponse>, Integer, Hash)> list_omni_transactions_by_block_height_with_http_info(network, blockchain, block_height, opts)

```ruby
begin
  # List Omni Transactions By Block Height
  data, status_code, headers = api_instance.list_omni_transactions_by_block_height_with_http_info(network, blockchain, block_height, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListOmniTransactionsByBlockHeightResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling OmniLayerApi->list_omni_transactions_by_block_height_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **network** | **String** | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot;, \&quot;rinkeby\&quot; are test networks. |  |
| **blockchain** | **String** | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc. |  |
| **block_height** | **String** | Represents the number of blocks in the blockchain preceding this specific block. Block numbers have no gaps. A blockchain usually starts with block 0 called the \&quot;Genesis block\&quot;. |  |
| **context** | **String** | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user. | [optional] |
| **limit** | **Integer** | Defines how many items should be returned in the response per page basis. | [optional][default to 50] |
| **offset** | **Integer** | The starting index of the response items, i.e. where the response should start listing the returned items. | [optional][default to 0] |

### Return type

[**ListOmniTransactionsByBlockHeightResponse**](ListOmniTransactionsByBlockHeightResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_unconfirmed_omni_transactions_by_address

> <ListUnconfirmedOmniTransactionsByAddressResponse> list_unconfirmed_omni_transactions_by_address(network, blockchain, address, opts)

List Unconfirmed Omni Transactions By Address

This endpoint will list unconfirmed Omni transactions by an attribute `address`. The transactions listed will detail additional information such as hash, height, time of creation in Unix timestamp, etc.    Unconfirmed transactions are usually put in the Mempool and await verification so that they can be added to a block.

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

api_instance = OpenapiClient::OmniLayerApi.new
network = 'mainnet' # String | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \"mainnet\" is the live network with actual data while networks like \"testnet\", \"ropsten\", \"rinkeby\" are test networks.
blockchain = 'bitcoin' # String | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc.
address = 'mi7iSsKcvyFYNsiYdDZqJmH75RmoHomwmo' # String | Represents the public address, which is a compressed and shortened form of a public key.
opts = {
  context: 'context_example', # String | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. `context` is specified by the user.
  limit: 50, # Integer | Defines how many items should be returned in the response per page basis.
  offset: 10 # Integer | The starting index of the response items, i.e. where the response should start listing the returned items.
}

begin
  # List Unconfirmed Omni Transactions By Address
  result = api_instance.list_unconfirmed_omni_transactions_by_address(network, blockchain, address, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling OmniLayerApi->list_unconfirmed_omni_transactions_by_address: #{e}"
end
```

#### Using the list_unconfirmed_omni_transactions_by_address_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListUnconfirmedOmniTransactionsByAddressResponse>, Integer, Hash)> list_unconfirmed_omni_transactions_by_address_with_http_info(network, blockchain, address, opts)

```ruby
begin
  # List Unconfirmed Omni Transactions By Address
  data, status_code, headers = api_instance.list_unconfirmed_omni_transactions_by_address_with_http_info(network, blockchain, address, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListUnconfirmedOmniTransactionsByAddressResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling OmniLayerApi->list_unconfirmed_omni_transactions_by_address_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **network** | **String** | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot;, \&quot;rinkeby\&quot; are test networks. |  |
| **blockchain** | **String** | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc. |  |
| **address** | **String** | Represents the public address, which is a compressed and shortened form of a public key. |  |
| **context** | **String** | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user. | [optional] |
| **limit** | **Integer** | Defines how many items should be returned in the response per page basis. | [optional][default to 50] |
| **offset** | **Integer** | The starting index of the response items, i.e. where the response should start listing the returned items. | [optional][default to 0] |

### Return type

[**ListUnconfirmedOmniTransactionsByAddressResponse**](ListUnconfirmedOmniTransactionsByAddressResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_unconfirmed_omni_transactions_by_property_id

> <ListUnconfirmedOmniTransactionsByPropertyIDResponse> list_unconfirmed_omni_transactions_by_property_id(network, blockchain, property_id, opts)

List Unconfirmed Omni Transactions By Property ID

This endpoint will list unconfirmed Omni transactions by an attribute `propertyId`. The transactions listed will detail additional information such as hash, height, time of creation in Unix timestamp, etc.    Unconfirmed transactions are usually put in the Mempool and await verification so that they can be added to a block.

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

api_instance = OpenapiClient::OmniLayerApi.new
network = 'mainnet' # String | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \"mainnet\" is the live network with actual data while networks like \"testnet\", \"ropsten\", \"rinkeby\" are test networks.
blockchain = 'bitcoin' # String | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc.
property_id = '2' # String | Represents the identifier of the tokens to send.
opts = {
  context: 'context_example', # String | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. `context` is specified by the user.
  limit: 50, # Integer | Defines how many items should be returned in the response per page basis.
  offset: 10 # Integer | The starting index of the response items, i.e. where the response should start listing the returned items.
}

begin
  # List Unconfirmed Omni Transactions By Property ID
  result = api_instance.list_unconfirmed_omni_transactions_by_property_id(network, blockchain, property_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling OmniLayerApi->list_unconfirmed_omni_transactions_by_property_id: #{e}"
end
```

#### Using the list_unconfirmed_omni_transactions_by_property_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListUnconfirmedOmniTransactionsByPropertyIDResponse>, Integer, Hash)> list_unconfirmed_omni_transactions_by_property_id_with_http_info(network, blockchain, property_id, opts)

```ruby
begin
  # List Unconfirmed Omni Transactions By Property ID
  data, status_code, headers = api_instance.list_unconfirmed_omni_transactions_by_property_id_with_http_info(network, blockchain, property_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListUnconfirmedOmniTransactionsByPropertyIDResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling OmniLayerApi->list_unconfirmed_omni_transactions_by_property_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **network** | **String** | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot;, \&quot;rinkeby\&quot; are test networks. |  |
| **blockchain** | **String** | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc. |  |
| **property_id** | **String** | Represents the identifier of the tokens to send. |  |
| **context** | **String** | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user. | [optional] |
| **limit** | **Integer** | Defines how many items should be returned in the response per page basis. | [optional][default to 50] |
| **offset** | **Integer** | The starting index of the response items, i.e. where the response should start listing the returned items. | [optional][default to 0] |

### Return type

[**ListUnconfirmedOmniTransactionsByPropertyIDResponse**](ListUnconfirmedOmniTransactionsByPropertyIDResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

