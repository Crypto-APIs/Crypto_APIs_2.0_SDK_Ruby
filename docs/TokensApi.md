# CryptoApis::TokensApi

All URIs are relative to *https://rest.cryptoapis.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_token_details_by_contract_address**](TokensApi.md#get_token_details_by_contract_address) | **GET** /blockchain-data/{blockchain}/{network}/addresses/{contractAddress}/contract | Get Token Details by Contract Address |
| [**list_confirmed_tokens_transfers_by_address**](TokensApi.md#list_confirmed_tokens_transfers_by_address) | **GET** /blockchain-data/{blockchain}/{network}/addresses/{address}/tokens-transfers | List Confirmed Tokens Transfers By Address |
| [**list_tokens_by_address**](TokensApi.md#list_tokens_by_address) | **GET** /blockchain-data/{blockchain}/{network}/addresses/{address}/tokens | List Tokens By Address |
| [**list_tokens_transfers_by_transaction_hash**](TokensApi.md#list_tokens_transfers_by_transaction_hash) | **GET** /blockchain-data/{blockchain}/{network}/transactions/{transactionHash}/tokens-transfers | List Tokens Transfers By Transaction Hash |
| [**list_unconfirmed_tokens_transfers_by_address**](TokensApi.md#list_unconfirmed_tokens_transfers_by_address) | **GET** /blockchain-data/{blockchain}/{network}/addresses/{address}/tokens-transfers-unconfirmed | List Unconfirmed Tokens Transfers By Address |


## get_token_details_by_contract_address

> <GetTokenDetailsByContractAddressR> get_token_details_by_contract_address(blockchain, network, contract_address, opts)

Get Token Details by Contract Address

Though this endpoint customers can obtain information about token details. This can be done by providing the `contact address` parameter.    {note}This address is **not** the same as the smart contract creator address.{/note}

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

api_instance = CryptoApis::TokensApi.new
blockchain = 'ethereum' # String | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc.
network = 'mainnet' # String | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \"mainnet\" is the live network with actual data while networks like \"testnet\", \"ropsten\" are test networks.
contract_address = '0x7495fede000c8a3b77eeae09cf70fa94cd2d53f5' # String | Defines the specific address of the contract.
opts = {
  context: 'yourExampleString' # String | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. `context` is specified by the user.
}

begin
  # Get Token Details by Contract Address
  result = api_instance.get_token_details_by_contract_address(blockchain, network, contract_address, opts)
  p result
rescue CryptoApis::ApiError => e
  puts "Error when calling TokensApi->get_token_details_by_contract_address: #{e}"
end
```

#### Using the get_token_details_by_contract_address_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetTokenDetailsByContractAddressR>, Integer, Hash)> get_token_details_by_contract_address_with_http_info(blockchain, network, contract_address, opts)

```ruby
begin
  # Get Token Details by Contract Address
  data, status_code, headers = api_instance.get_token_details_by_contract_address_with_http_info(blockchain, network, contract_address, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetTokenDetailsByContractAddressR>
rescue CryptoApis::ApiError => e
  puts "Error when calling TokensApi->get_token_details_by_contract_address_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **blockchain** | **String** | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc. | [default to &#39;ethereum&#39;] |
| **network** | **String** | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot; are test networks. |  |
| **contract_address** | **String** | Defines the specific address of the contract. |  |
| **context** | **String** | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user. | [optional] |

### Return type

[**GetTokenDetailsByContractAddressR**](GetTokenDetailsByContractAddressR.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_confirmed_tokens_transfers_by_address

> <ListConfirmedTokensTransfersByAddressR> list_confirmed_tokens_transfers_by_address(blockchain, network, address, opts)

List Confirmed Tokens Transfers By Address

Through this endpoint customers can obtain a list with **confirmed** token transfers by the `address` attribute. Token transfers may include information such as addresses of the sender and recipient, token name, token symbol, etc.    {note}This refers only to transfers done for **confirmed tokens** not coins.{/note}

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

api_instance = CryptoApis::TokensApi.new
blockchain = 'ethereum' # String | Represents the specific blockchain protocol name, e.g. Ethereum, Ethereum Classic, etc.
network = 'mainnet' # String | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \"mainnet\" is the live network with actual data while networks like \"testnet\", \"ropsten\" are test networks.
address = '0x033ef6db9fbd0ee60e2931906b987fe0280471a0' # String | Represents the public address, which is a compressed and shortened form of a public key.
opts = {
  context: 'yourExampleString', # String | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. `context` is specified by the user.
  limit: 50, # Integer | Defines how many items should be returned in the response per page basis.
  offset: 0 # Integer | The starting index of the response items, i.e. where the response should start listing the returned items.
}

begin
  # List Confirmed Tokens Transfers By Address
  result = api_instance.list_confirmed_tokens_transfers_by_address(blockchain, network, address, opts)
  p result
rescue CryptoApis::ApiError => e
  puts "Error when calling TokensApi->list_confirmed_tokens_transfers_by_address: #{e}"
end
```

#### Using the list_confirmed_tokens_transfers_by_address_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListConfirmedTokensTransfersByAddressR>, Integer, Hash)> list_confirmed_tokens_transfers_by_address_with_http_info(blockchain, network, address, opts)

```ruby
begin
  # List Confirmed Tokens Transfers By Address
  data, status_code, headers = api_instance.list_confirmed_tokens_transfers_by_address_with_http_info(blockchain, network, address, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListConfirmedTokensTransfersByAddressR>
rescue CryptoApis::ApiError => e
  puts "Error when calling TokensApi->list_confirmed_tokens_transfers_by_address_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **blockchain** | **String** | Represents the specific blockchain protocol name, e.g. Ethereum, Ethereum Classic, etc. |  |
| **network** | **String** | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot; are test networks. |  |
| **address** | **String** | Represents the public address, which is a compressed and shortened form of a public key. |  |
| **context** | **String** | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user. | [optional] |
| **limit** | **Integer** | Defines how many items should be returned in the response per page basis. | [optional][default to 50] |
| **offset** | **Integer** | The starting index of the response items, i.e. where the response should start listing the returned items. | [optional][default to 0] |

### Return type

[**ListConfirmedTokensTransfersByAddressR**](ListConfirmedTokensTransfersByAddressR.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_tokens_by_address

> <ListTokensByAddressR> list_tokens_by_address(blockchain, network, address, opts)

List Tokens By Address

Through this endpoint customers can obtain token data by providing an attribute - `address`.  The information that can be returned can include the contract address, the token symbol, type and balance.

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

api_instance = CryptoApis::TokensApi.new
blockchain = 'ethereum' # String | Represents the specific blockchain protocol name, e.g. Ethereum, Ethereum Classic, etc.
network = 'mainnet' # String | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \"mainnet\" is the live network with actual data while networks like \"testnet\", \"ropsten\" are test networks.
address = '0x033ef6db9fbd0ee60e2931906b987fe0280471a0' # String | Represents the public address, which is a compressed and shortened form of a public key.
opts = {
  context: 'yourExampleString', # String | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. `context` is specified by the user.
  limit: 50, # Integer | Defines how many items should be returned in the response per page basis.
  offset: 0 # Integer | The starting index of the response items, i.e. where the response should start listing the returned items.
}

begin
  # List Tokens By Address
  result = api_instance.list_tokens_by_address(blockchain, network, address, opts)
  p result
rescue CryptoApis::ApiError => e
  puts "Error when calling TokensApi->list_tokens_by_address: #{e}"
end
```

#### Using the list_tokens_by_address_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListTokensByAddressR>, Integer, Hash)> list_tokens_by_address_with_http_info(blockchain, network, address, opts)

```ruby
begin
  # List Tokens By Address
  data, status_code, headers = api_instance.list_tokens_by_address_with_http_info(blockchain, network, address, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListTokensByAddressR>
rescue CryptoApis::ApiError => e
  puts "Error when calling TokensApi->list_tokens_by_address_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **blockchain** | **String** | Represents the specific blockchain protocol name, e.g. Ethereum, Ethereum Classic, etc. |  |
| **network** | **String** | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot; are test networks. |  |
| **address** | **String** | Represents the public address, which is a compressed and shortened form of a public key. |  |
| **context** | **String** | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user. | [optional] |
| **limit** | **Integer** | Defines how many items should be returned in the response per page basis. | [optional][default to 50] |
| **offset** | **Integer** | The starting index of the response items, i.e. where the response should start listing the returned items. | [optional][default to 0] |

### Return type

[**ListTokensByAddressR**](ListTokensByAddressR.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_tokens_transfers_by_transaction_hash

> <ListTokensTransfersByTransactionHashR> list_tokens_transfers_by_transaction_hash(blockchain, network, transaction_hash, opts)

List Tokens Transfers By Transaction Hash

Through this endpoint customers can obtain a list with token transfers by the `transactionHash` attribute. Token transfers may include information such as addresses of the sender and recipient, token name, token symbol, etc.    {note}This refers only to transfers done for **tokens** not coins.{/note}

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

api_instance = CryptoApis::TokensApi.new
blockchain = 'ethereum' # String | Represents the specific blockchain protocol name, e.g. Ethereum, Ethereum Classic, etc.
network = 'mainnet' # String | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \"mainnet\" is the live network with actual data while networks like \"testnet\", \"ropsten\" are test networks.
transaction_hash = '0xbe38781783b1b9d480219255ff98e20335a39e13979a66112efa33f05fde0a33' # String | Represents the hash of the transaction, which is its unique identifier. It represents a cryptographic digital fingerprint made by hashing the block header twice through the SHA256 algorithm.
opts = {
  context: 'yourExampleString', # String | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. `context` is specified by the user.
  limit: 50, # Integer | Defines how many items should be returned in the response per page basis.
  offset: 0 # Integer | The starting index of the response items, i.e. where the response should start listing the returned items.
}

begin
  # List Tokens Transfers By Transaction Hash
  result = api_instance.list_tokens_transfers_by_transaction_hash(blockchain, network, transaction_hash, opts)
  p result
rescue CryptoApis::ApiError => e
  puts "Error when calling TokensApi->list_tokens_transfers_by_transaction_hash: #{e}"
end
```

#### Using the list_tokens_transfers_by_transaction_hash_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListTokensTransfersByTransactionHashR>, Integer, Hash)> list_tokens_transfers_by_transaction_hash_with_http_info(blockchain, network, transaction_hash, opts)

```ruby
begin
  # List Tokens Transfers By Transaction Hash
  data, status_code, headers = api_instance.list_tokens_transfers_by_transaction_hash_with_http_info(blockchain, network, transaction_hash, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListTokensTransfersByTransactionHashR>
rescue CryptoApis::ApiError => e
  puts "Error when calling TokensApi->list_tokens_transfers_by_transaction_hash_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **blockchain** | **String** | Represents the specific blockchain protocol name, e.g. Ethereum, Ethereum Classic, etc. |  |
| **network** | **String** | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot; are test networks. |  |
| **transaction_hash** | **String** | Represents the hash of the transaction, which is its unique identifier. It represents a cryptographic digital fingerprint made by hashing the block header twice through the SHA256 algorithm. |  |
| **context** | **String** | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user. | [optional] |
| **limit** | **Integer** | Defines how many items should be returned in the response per page basis. | [optional][default to 50] |
| **offset** | **Integer** | The starting index of the response items, i.e. where the response should start listing the returned items. | [optional][default to 0] |

### Return type

[**ListTokensTransfersByTransactionHashR**](ListTokensTransfersByTransactionHashR.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_unconfirmed_tokens_transfers_by_address

> <ListUnconfirmedTokensTransfersByAddressR> list_unconfirmed_tokens_transfers_by_address(blockchain, network, address, opts)

List Unconfirmed Tokens Transfers By Address

Through this endpoint customers can obtain a list with **unconfirmed** token transfers by the `address` attribute. Token transfers may include information such as addresses of the sender and recipient, token name, token symbol, etc.    {note}This refers only to transfers done for **unconfirmed tokens** not coins.{/note}

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

api_instance = CryptoApis::TokensApi.new
blockchain = 'ethereum' # String | Represents the specific blockchain protocol name, e.g. Ethereum, Ethereum Classic, etc.
network = 'mainnet' # String | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \"mainnet\" is the live network with actual data while networks like \"testnet\", \"ropsten\" are test networks.
address = '0x033ef6db9fbd0ee60e2931906b987fe0280471a0' # String | Represents the public address, which is a compressed and shortened form of a public key.
opts = {
  context: 'yourExampleString', # String | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. `context` is specified by the user.
  limit: 50, # Integer | Defines how many items should be returned in the response per page basis.
  offset: 0 # Integer | The starting index of the response items, i.e. where the response should start listing the returned items.
}

begin
  # List Unconfirmed Tokens Transfers By Address
  result = api_instance.list_unconfirmed_tokens_transfers_by_address(blockchain, network, address, opts)
  p result
rescue CryptoApis::ApiError => e
  puts "Error when calling TokensApi->list_unconfirmed_tokens_transfers_by_address: #{e}"
end
```

#### Using the list_unconfirmed_tokens_transfers_by_address_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListUnconfirmedTokensTransfersByAddressR>, Integer, Hash)> list_unconfirmed_tokens_transfers_by_address_with_http_info(blockchain, network, address, opts)

```ruby
begin
  # List Unconfirmed Tokens Transfers By Address
  data, status_code, headers = api_instance.list_unconfirmed_tokens_transfers_by_address_with_http_info(blockchain, network, address, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListUnconfirmedTokensTransfersByAddressR>
rescue CryptoApis::ApiError => e
  puts "Error when calling TokensApi->list_unconfirmed_tokens_transfers_by_address_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **blockchain** | **String** | Represents the specific blockchain protocol name, e.g. Ethereum, Ethereum Classic, etc. |  |
| **network** | **String** | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot; are test networks. |  |
| **address** | **String** | Represents the public address, which is a compressed and shortened form of a public key. |  |
| **context** | **String** | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user. | [optional] |
| **limit** | **Integer** | Defines how many items should be returned in the response per page basis. | [optional][default to 50] |
| **offset** | **Integer** | The starting index of the response items, i.e. where the response should start listing the returned items. | [optional][default to 0] |

### Return type

[**ListUnconfirmedTokensTransfersByAddressR**](ListUnconfirmedTokensTransfersByAddressR.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

