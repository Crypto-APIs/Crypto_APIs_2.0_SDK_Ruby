# CryptoApis::XRPRippleApi

All URIs are relative to *https://rest.cryptoapis.io/v2*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_latest_mined_xrp__ripple_block**](XRPRippleApi.md#get_latest_mined_xrp__ripple_block) | **GET** /blockchain-data/xrp-specific/{network}/blocks/last | Get Latest Mined XRP (Ripple) Block |
| [**get_xrp__ripple_address_details**](XRPRippleApi.md#get_xrp__ripple_address_details) | **GET** /blockchain-data/xrp-specific/{network}/addresses/{address} | Get XRP (Ripple) Address Details |
| [**get_xrp__ripple_block_details_by_block_hash**](XRPRippleApi.md#get_xrp__ripple_block_details_by_block_hash) | **GET** /blockchain-data/xrp-specific/{network}/blocks/hash/{blockHash} | Get XRP (Ripple) Block Details By Block Hash |
| [**get_xrp__ripple_block_details_by_block_height**](XRPRippleApi.md#get_xrp__ripple_block_details_by_block_height) | **GET** /blockchain-data/xrp-specific/{network}/blocks/height/{blockHeight} | Get XRP (Ripple) Block Details By Block Height |
| [**get_xrp__ripple_transaction_details_by_transaction_id**](XRPRippleApi.md#get_xrp__ripple_transaction_details_by_transaction_id) | **GET** /blockchain-data/xrp-specific/{network}/transactions/{transactionHash} | Get XRP (Ripple) Transaction Details By Transaction ID |
| [**list_xrp__ripple_transactions_by_address**](XRPRippleApi.md#list_xrp__ripple_transactions_by_address) | **GET** /blockchain-data/xrp-specific/{network}/addresses/{address}/transactions | List XRP (Ripple) Transactions by Address |
| [**list_xrp__ripple_transactions_by_block_hash**](XRPRippleApi.md#list_xrp__ripple_transactions_by_block_hash) | **GET** /blockchain-data/xrp-specific/{network}/blocks/hash/{blockHash}/transactions | List XRP (Ripple) Transactions By Block Hash |
| [**list_xrp__ripple_transactions_by_block_height**](XRPRippleApi.md#list_xrp__ripple_transactions_by_block_height) | **GET** /blockchain-data/xrp-specific/{network}/blocks/height/{blockHeight}/transactions | List XRP (Ripple) Transactions By Block Height |


## get_latest_mined_xrp__ripple_block

> <GetLatestMinedXRPRippleBlockR> get_latest_mined_xrp__ripple_block(network, opts)

Get Latest Mined XRP (Ripple) Block

Through this endpoint customers can fetch the last mined XRP block in the blockchain, along with its details. These could include the hash of the specific, the previous and the next block, its transactions count, its height, etc.     Since XRP is a different blockchain than Bitcoin and Ethereum, it isn't unified.

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

api_instance = CryptoApis::XRPRippleApi.new
network = 'mainnet' # String | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \"mainnet\" is the live network with actual data while networks like \"testnet\", \"ropsten\", \"rinkeby\" are test networks.
opts = {
  context: 'context_example' # String | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. `context` is specified by the user.
}

begin
  # Get Latest Mined XRP (Ripple) Block
  result = api_instance.get_latest_mined_xrp__ripple_block(network, opts)
  p result
rescue CryptoApis::ApiError => e
  puts "Error when calling XRPRippleApi->get_latest_mined_xrp__ripple_block: #{e}"
end
```

#### Using the get_latest_mined_xrp__ripple_block_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetLatestMinedXRPRippleBlockR>, Integer, Hash)> get_latest_mined_xrp__ripple_block_with_http_info(network, opts)

```ruby
begin
  # Get Latest Mined XRP (Ripple) Block
  data, status_code, headers = api_instance.get_latest_mined_xrp__ripple_block_with_http_info(network, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetLatestMinedXRPRippleBlockR>
rescue CryptoApis::ApiError => e
  puts "Error when calling XRPRippleApi->get_latest_mined_xrp__ripple_block_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **network** | **String** | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot;, \&quot;rinkeby\&quot; are test networks. |  |
| **context** | **String** | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user. | [optional] |

### Return type

[**GetLatestMinedXRPRippleBlockR**](GetLatestMinedXRPRippleBlockR.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_xrp__ripple_address_details

> <GetXRPRippleAddressDetailsR> get_xrp__ripple_address_details(network, address, opts)

Get XRP (Ripple) Address Details

Through this endpoint the customer can receive basic information about a given XRP address based on confirmed/synced blocks only. In the case where there are any incoming or outgoing **unconfirmed** transactions for the specific address, they **will not** be counted or calculated here.    Since XRP is a different blockchain than Bitcoin and Ethereum, it isn't unified.

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

api_instance = CryptoApis::XRPRippleApi.new
network = 'mainnet' # String | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \"mainnet\" is the live network with actual data while networks like \"testnet\",  are test networks.
address = 'rA9bXGJcXvZKaWofrRphdJsBWzhyCfH3z' # String | Represents the public address, which is a compressed and shortened form of a public key.
opts = {
  context: 'context_example' # String | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. `context` is specified by the user.
}

begin
  # Get XRP (Ripple) Address Details
  result = api_instance.get_xrp__ripple_address_details(network, address, opts)
  p result
rescue CryptoApis::ApiError => e
  puts "Error when calling XRPRippleApi->get_xrp__ripple_address_details: #{e}"
end
```

#### Using the get_xrp__ripple_address_details_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetXRPRippleAddressDetailsR>, Integer, Hash)> get_xrp__ripple_address_details_with_http_info(network, address, opts)

```ruby
begin
  # Get XRP (Ripple) Address Details
  data, status_code, headers = api_instance.get_xrp__ripple_address_details_with_http_info(network, address, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetXRPRippleAddressDetailsR>
rescue CryptoApis::ApiError => e
  puts "Error when calling XRPRippleApi->get_xrp__ripple_address_details_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **network** | **String** | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;,  are test networks. |  |
| **address** | **String** | Represents the public address, which is a compressed and shortened form of a public key. |  |
| **context** | **String** | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user. | [optional] |

### Return type

[**GetXRPRippleAddressDetailsR**](GetXRPRippleAddressDetailsR.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_xrp__ripple_block_details_by_block_hash

> <GetXRPRippleBlockDetailsByBlockHashR> get_xrp__ripple_block_details_by_block_hash(network, block_hash, opts)

Get XRP (Ripple) Block Details By Block Hash

Through this endpoint customers can obtain basic information about a given XRP block (a block on the XRP blockchain), specifically by using the `hash` parameter. These block details could include the hash of the specific, the previous and the next block, the number of included transactions, etc.     Since XRP is a different blockchain than Bitcoin and Ethereum, it isn't unified.

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

api_instance = CryptoApis::XRPRippleApi.new
network = 'mainnet' # String | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \"mainnet\" is the live network with actual data while networks like \"testnet\",  are test networks.
block_hash = '1ab0614d2a438da8b23086cbceef7d443edbd295d9c7619fc8a19c7618bc22c9' # String | Represents the hash of the block, which is its unique identifier. It represents a cryptographic digital fingerprint made by hashing the block header twice through the SHA256 algorithm.
opts = {
  context: 'context_example' # String | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. `context` is specified by the user.
}

begin
  # Get XRP (Ripple) Block Details By Block Hash
  result = api_instance.get_xrp__ripple_block_details_by_block_hash(network, block_hash, opts)
  p result
rescue CryptoApis::ApiError => e
  puts "Error when calling XRPRippleApi->get_xrp__ripple_block_details_by_block_hash: #{e}"
end
```

#### Using the get_xrp__ripple_block_details_by_block_hash_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetXRPRippleBlockDetailsByBlockHashR>, Integer, Hash)> get_xrp__ripple_block_details_by_block_hash_with_http_info(network, block_hash, opts)

```ruby
begin
  # Get XRP (Ripple) Block Details By Block Hash
  data, status_code, headers = api_instance.get_xrp__ripple_block_details_by_block_hash_with_http_info(network, block_hash, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetXRPRippleBlockDetailsByBlockHashR>
rescue CryptoApis::ApiError => e
  puts "Error when calling XRPRippleApi->get_xrp__ripple_block_details_by_block_hash_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **network** | **String** | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;,  are test networks. |  |
| **block_hash** | **String** | Represents the hash of the block, which is its unique identifier. It represents a cryptographic digital fingerprint made by hashing the block header twice through the SHA256 algorithm. |  |
| **context** | **String** | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user. | [optional] |

### Return type

[**GetXRPRippleBlockDetailsByBlockHashR**](GetXRPRippleBlockDetailsByBlockHashR.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_xrp__ripple_block_details_by_block_height

> <GetXRPRippleBlockDetailsByBlockHeightR> get_xrp__ripple_block_details_by_block_height(network, block_height, opts)

Get XRP (Ripple) Block Details By Block Height

Through this endpoint customers can obtain basic information about a given XRP block (a block on the XRP blockchain), specifically by using the `height` parameter. These block details could include the hash of the specific, the previous and the next block, its transactions count, etc.    Since XRP is a different blockchain than Bitcoin and Ethereum, it isn't unified.

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

api_instance = CryptoApis::XRPRippleApi.new
network = 'mainnet' # String | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \"mainnet\" is the live network with actual data while networks like \"testnet\",  are test networks.
block_height = '15886156' # String | Represents the number of blocks in the blockchain preceding this specific block. Block numbers have no gaps. A blockchain usually starts with block 0 called the \"Genesis block\".
opts = {
  context: 'context_example' # String | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. `context` is specified by the user.
}

begin
  # Get XRP (Ripple) Block Details By Block Height
  result = api_instance.get_xrp__ripple_block_details_by_block_height(network, block_height, opts)
  p result
rescue CryptoApis::ApiError => e
  puts "Error when calling XRPRippleApi->get_xrp__ripple_block_details_by_block_height: #{e}"
end
```

#### Using the get_xrp__ripple_block_details_by_block_height_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetXRPRippleBlockDetailsByBlockHeightR>, Integer, Hash)> get_xrp__ripple_block_details_by_block_height_with_http_info(network, block_height, opts)

```ruby
begin
  # Get XRP (Ripple) Block Details By Block Height
  data, status_code, headers = api_instance.get_xrp__ripple_block_details_by_block_height_with_http_info(network, block_height, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetXRPRippleBlockDetailsByBlockHeightR>
rescue CryptoApis::ApiError => e
  puts "Error when calling XRPRippleApi->get_xrp__ripple_block_details_by_block_height_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **network** | **String** | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;,  are test networks. |  |
| **block_height** | **String** | Represents the number of blocks in the blockchain preceding this specific block. Block numbers have no gaps. A blockchain usually starts with block 0 called the \&quot;Genesis block\&quot;. |  |
| **context** | **String** | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user. | [optional] |

### Return type

[**GetXRPRippleBlockDetailsByBlockHeightR**](GetXRPRippleBlockDetailsByBlockHeightR.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_xrp__ripple_transaction_details_by_transaction_id

> <GetXRPRippleTransactionDetailsByTransactionIDR> get_xrp__ripple_transaction_details_by_transaction_id(network, transaction_hash, opts)

Get XRP (Ripple) Transaction Details By Transaction ID

Through this endpoint customers can obtain details about a XRP transaction by the transaction's unique identifier.     Since XRP is a different blockchain than Bitcoin and Ethereum, it isn't unified.

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

api_instance = CryptoApis::XRPRippleApi.new
network = 'mainnet' # String | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \"mainnet\" is the live network with actual data while networks like \"testnet\", \"ropsten\", \"rinkeby\" are test networks.
transaction_hash = '36a1737481edec87bacc3101dfb752ae2c76f9171e7edebe587e330c1ea77c8d' # String | Represents the same as `transactionId` for account-based protocols like Ethereum, while it could be different in UTXO-based protocols like Bitcoin. E.g., in UTXO-based protocols `hash` is different from `transactionId` for SegWit transactions.
opts = {
  context: 'context_example' # String | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. `context` is specified by the user.
}

begin
  # Get XRP (Ripple) Transaction Details By Transaction ID
  result = api_instance.get_xrp__ripple_transaction_details_by_transaction_id(network, transaction_hash, opts)
  p result
rescue CryptoApis::ApiError => e
  puts "Error when calling XRPRippleApi->get_xrp__ripple_transaction_details_by_transaction_id: #{e}"
end
```

#### Using the get_xrp__ripple_transaction_details_by_transaction_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetXRPRippleTransactionDetailsByTransactionIDR>, Integer, Hash)> get_xrp__ripple_transaction_details_by_transaction_id_with_http_info(network, transaction_hash, opts)

```ruby
begin
  # Get XRP (Ripple) Transaction Details By Transaction ID
  data, status_code, headers = api_instance.get_xrp__ripple_transaction_details_by_transaction_id_with_http_info(network, transaction_hash, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetXRPRippleTransactionDetailsByTransactionIDR>
rescue CryptoApis::ApiError => e
  puts "Error when calling XRPRippleApi->get_xrp__ripple_transaction_details_by_transaction_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **network** | **String** | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot;, \&quot;rinkeby\&quot; are test networks. |  |
| **transaction_hash** | **String** | Represents the same as &#x60;transactionId&#x60; for account-based protocols like Ethereum, while it could be different in UTXO-based protocols like Bitcoin. E.g., in UTXO-based protocols &#x60;hash&#x60; is different from &#x60;transactionId&#x60; for SegWit transactions. |  |
| **context** | **String** | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user. | [optional] |

### Return type

[**GetXRPRippleTransactionDetailsByTransactionIDR**](GetXRPRippleTransactionDetailsByTransactionIDR.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_xrp__ripple_transactions_by_address

> <ListXRPRippleTransactionsByAddressR> list_xrp__ripple_transactions_by_address(network, address, opts)

List XRP (Ripple) Transactions by Address

This endpoint will list XRP transactions by a attribute `address`. The transactions listed will detail additional information such as hash, height, time of creation in Unix timestamp, etc.    Since XRP is a different blockchain than Bitcoin and Ethereum, it isn't unified.    {note}Please note that listing data from the same type will apply pagination on the results.{/note}

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

api_instance = CryptoApis::XRPRippleApi.new
network = 'mainnet' # String | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \"mainnet\" is the live network with actual data while networks like \"testnet\",  are test networks.
address = 'rA9bXGJcXvZKaWofrRphdJsBWzhyCfH3z' # String | Represents the public address, which is a compressed and shortened form of a public key.
opts = {
  context: 'context_example', # String | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. `context` is specified by the user.
  limit: 50, # Integer | Defines how many items should be returned in the response per page basis.
  offset: 10, # Integer | The starting index of the response items, i.e. where the response should start listing the returned items.
  transaction_type: 'account-set' # String | 
}

begin
  # List XRP (Ripple) Transactions by Address
  result = api_instance.list_xrp__ripple_transactions_by_address(network, address, opts)
  p result
rescue CryptoApis::ApiError => e
  puts "Error when calling XRPRippleApi->list_xrp__ripple_transactions_by_address: #{e}"
end
```

#### Using the list_xrp__ripple_transactions_by_address_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListXRPRippleTransactionsByAddressR>, Integer, Hash)> list_xrp__ripple_transactions_by_address_with_http_info(network, address, opts)

```ruby
begin
  # List XRP (Ripple) Transactions by Address
  data, status_code, headers = api_instance.list_xrp__ripple_transactions_by_address_with_http_info(network, address, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListXRPRippleTransactionsByAddressR>
rescue CryptoApis::ApiError => e
  puts "Error when calling XRPRippleApi->list_xrp__ripple_transactions_by_address_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **network** | **String** | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;,  are test networks. |  |
| **address** | **String** | Represents the public address, which is a compressed and shortened form of a public key. |  |
| **context** | **String** | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user. | [optional] |
| **limit** | **Integer** | Defines how many items should be returned in the response per page basis. | [optional][default to 50] |
| **offset** | **Integer** | The starting index of the response items, i.e. where the response should start listing the returned items. | [optional][default to 0] |
| **transaction_type** | **String** |  | [optional] |

### Return type

[**ListXRPRippleTransactionsByAddressR**](ListXRPRippleTransactionsByAddressR.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_xrp__ripple_transactions_by_block_hash

> <ListXRPRippleTransactionsByBlockHashR> list_xrp__ripple_transactions_by_block_hash(network, block_hash, opts)

List XRP (Ripple) Transactions By Block Hash

This endpoint will list transactions by an attribute `blockHash`. The transactions listed will detail additional information such as hash, addresses, time of creation in Unix timestamp, etc.    Since XRP is a different blockchain than Bitcoin and Ethereum, it isn't unified.    {note}Please note that listing data from the same type will apply pagination on the results.{/note}

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

api_instance = CryptoApis::XRPRippleApi.new
network = 'mainnet' # String | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \"mainnet\" is the live network with actual data while networks like \"testnet\", \"ropsten\", \"rinkeby\" are test networks.
block_hash = '14754656235f865a74eba27791fd41a47bdfe07fe811ff6d78f53db32e129e39' # String | Represents the hash of the block, which is its unique identifier. It represents a cryptographic digital fingerprint made by hashing the block header twice through the SHA256 algorithm.
opts = {
  context: 'context_example', # String | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. `context` is specified by the user.
  limit: 50, # Integer | Defines how many items should be returned in the response per page basis.
  offset: 10 # Integer | The starting index of the response items, i.e. where the response should start listing the returned items.
}

begin
  # List XRP (Ripple) Transactions By Block Hash
  result = api_instance.list_xrp__ripple_transactions_by_block_hash(network, block_hash, opts)
  p result
rescue CryptoApis::ApiError => e
  puts "Error when calling XRPRippleApi->list_xrp__ripple_transactions_by_block_hash: #{e}"
end
```

#### Using the list_xrp__ripple_transactions_by_block_hash_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListXRPRippleTransactionsByBlockHashR>, Integer, Hash)> list_xrp__ripple_transactions_by_block_hash_with_http_info(network, block_hash, opts)

```ruby
begin
  # List XRP (Ripple) Transactions By Block Hash
  data, status_code, headers = api_instance.list_xrp__ripple_transactions_by_block_hash_with_http_info(network, block_hash, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListXRPRippleTransactionsByBlockHashR>
rescue CryptoApis::ApiError => e
  puts "Error when calling XRPRippleApi->list_xrp__ripple_transactions_by_block_hash_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **network** | **String** | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot;, \&quot;rinkeby\&quot; are test networks. |  |
| **block_hash** | **String** | Represents the hash of the block, which is its unique identifier. It represents a cryptographic digital fingerprint made by hashing the block header twice through the SHA256 algorithm. |  |
| **context** | **String** | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user. | [optional] |
| **limit** | **Integer** | Defines how many items should be returned in the response per page basis. | [optional][default to 50] |
| **offset** | **Integer** | The starting index of the response items, i.e. where the response should start listing the returned items. | [optional][default to 0] |

### Return type

[**ListXRPRippleTransactionsByBlockHashR**](ListXRPRippleTransactionsByBlockHashR.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_xrp__ripple_transactions_by_block_height

> <ListXRPRippleTransactionsByBlockHeightR> list_xrp__ripple_transactions_by_block_height(network, block_height, opts)

List XRP (Ripple) Transactions By Block Height

This endpoint will list transactions by an attribute `blockHeight`. The transactions listed will detail additional information such as hash, addresses, time of creation in Unix timestamp, etc.    Since XRP is a different blockchain than Bitcoin and Ethereum, it isn't unified.    {note}Please note that listing data from the same type will apply pagination on the results.{/note}

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

api_instance = CryptoApis::XRPRippleApi.new
network = 'mainnet' # String | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \"mainnet\" is the live network with actual data while networks like \"testnet\", \"ropsten\", \"rinkeby\" are test networks.
block_height = 15971358 # Integer | 
opts = {
  context: 'context_example', # String | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. `context` is specified by the user.
  limit: 50, # Integer | Defines how many items should be returned in the response per page basis.
  offset: 10 # Integer | The starting index of the response items, i.e. where the response should start listing the returned items.
}

begin
  # List XRP (Ripple) Transactions By Block Height
  result = api_instance.list_xrp__ripple_transactions_by_block_height(network, block_height, opts)
  p result
rescue CryptoApis::ApiError => e
  puts "Error when calling XRPRippleApi->list_xrp__ripple_transactions_by_block_height: #{e}"
end
```

#### Using the list_xrp__ripple_transactions_by_block_height_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListXRPRippleTransactionsByBlockHeightR>, Integer, Hash)> list_xrp__ripple_transactions_by_block_height_with_http_info(network, block_height, opts)

```ruby
begin
  # List XRP (Ripple) Transactions By Block Height
  data, status_code, headers = api_instance.list_xrp__ripple_transactions_by_block_height_with_http_info(network, block_height, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListXRPRippleTransactionsByBlockHeightR>
rescue CryptoApis::ApiError => e
  puts "Error when calling XRPRippleApi->list_xrp__ripple_transactions_by_block_height_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **network** | **String** | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot;, \&quot;rinkeby\&quot; are test networks. |  |
| **block_height** | **Integer** |  |  |
| **context** | **String** | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user. | [optional] |
| **limit** | **Integer** | Defines how many items should be returned in the response per page basis. | [optional][default to 50] |
| **offset** | **Integer** | The starting index of the response items, i.e. where the response should start listing the returned items. | [optional][default to 0] |

### Return type

[**ListXRPRippleTransactionsByBlockHeightR**](ListXRPRippleTransactionsByBlockHeightR.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

