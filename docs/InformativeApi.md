# CryptoApis::InformativeApi

All URIs are relative to *https://rest.cryptoapis.io/v2*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_transaction_request_details**](InformativeApi.md#get_transaction_request_details) | **GET** /wallet-as-a-service/transactionRequests/{transactionRequestId} | Get Transaction Request Details |
| [**get_wallet_asset_details**](InformativeApi.md#get_wallet_asset_details) | **GET** /wallet-as-a-service/wallets/{walletId}/{blockchain}/{network} | Get Wallet Asset Details |
| [**list_deposit_addresses**](InformativeApi.md#list_deposit_addresses) | **GET** /wallet-as-a-service/wallets/{walletId}/{blockchain}/{network}/addresses | List Deposit Addresses |
| [**list_supported_tokens**](InformativeApi.md#list_supported_tokens) | **GET** /wallet-as-a-service/info/{blockchain}/{network}/supported-tokens | List Supported Tokens |
| [**list_wallet_transactions**](InformativeApi.md#list_wallet_transactions) | **GET** /wallet-as-a-service/wallets/{walletId}/{blockchain}/{network}/transactions | List Wallet Transactions |


## get_transaction_request_details

> <GetTransactionRequestDetailsR> get_transaction_request_details(transaction_request_id, opts)

Get Transaction Request Details

Through this endpoint customers can obtain details on transaction request.    {note}This regards **transaction requests**, which is not to be confused with **transactions**. Transaction requests may not be approved due to any reason, hence a transaction may not occur.{/note}

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

api_instance = CryptoApis::InformativeApi.new
transaction_request_id = '6115126693397c0006f78eb4' # String | Represents the unique ID of the transaction request.
opts = {
  context: 'context_example' # String | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. `context` is specified by the user.
}

begin
  # Get Transaction Request Details
  result = api_instance.get_transaction_request_details(transaction_request_id, opts)
  p result
rescue CryptoApis::ApiError => e
  puts "Error when calling InformativeApi->get_transaction_request_details: #{e}"
end
```

#### Using the get_transaction_request_details_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetTransactionRequestDetailsR>, Integer, Hash)> get_transaction_request_details_with_http_info(transaction_request_id, opts)

```ruby
begin
  # Get Transaction Request Details
  data, status_code, headers = api_instance.get_transaction_request_details_with_http_info(transaction_request_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetTransactionRequestDetailsR>
rescue CryptoApis::ApiError => e
  puts "Error when calling InformativeApi->get_transaction_request_details_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **transaction_request_id** | **String** | Represents the unique ID of the transaction request. |  |
| **context** | **String** | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user. | [optional] |

### Return type

[**GetTransactionRequestDetailsR**](GetTransactionRequestDetailsR.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_wallet_asset_details

> <GetWalletAssetDetailsR> get_wallet_asset_details(blockchain, network, wallet_id, opts)

Get Wallet Asset Details

Through this endpoint customers can obtain details about a specific Wallet/Vault.

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

api_instance = CryptoApis::InformativeApi.new
blockchain = 'bitcoin' # String | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc.
network = 'mainnet' # String | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \"mainnet\" is the live network with actual data while networks like \"testnet\", \"ropsten\" are test networks.
wallet_id = '60c9d9921c38030006675ff6' # String | Defines the unique ID of the Wallet.
opts = {
  context: 'context_example' # String | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. `context` is specified by the user.
}

begin
  # Get Wallet Asset Details
  result = api_instance.get_wallet_asset_details(blockchain, network, wallet_id, opts)
  p result
rescue CryptoApis::ApiError => e
  puts "Error when calling InformativeApi->get_wallet_asset_details: #{e}"
end
```

#### Using the get_wallet_asset_details_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWalletAssetDetailsR>, Integer, Hash)> get_wallet_asset_details_with_http_info(blockchain, network, wallet_id, opts)

```ruby
begin
  # Get Wallet Asset Details
  data, status_code, headers = api_instance.get_wallet_asset_details_with_http_info(blockchain, network, wallet_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWalletAssetDetailsR>
rescue CryptoApis::ApiError => e
  puts "Error when calling InformativeApi->get_wallet_asset_details_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **blockchain** | **String** | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc. |  |
| **network** | **String** | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot; are test networks. |  |
| **wallet_id** | **String** | Defines the unique ID of the Wallet. |  |
| **context** | **String** | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user. | [optional] |

### Return type

[**GetWalletAssetDetailsR**](GetWalletAssetDetailsR.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_deposit_addresses

> <ListDepositAddressesR> list_deposit_addresses(blockchain, network, wallet_id, opts)

List Deposit Addresses

Through this endpoint customers can pull a list of Deposit/Receiving Addresses they have already generated.    {note}Please note that listing data from the same type will apply pagination on the results.{/note}

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

api_instance = CryptoApis::InformativeApi.new
blockchain = 'bitcoin' # String | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc.
network = 'mainnet' # String | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \"mainnet\" is the live network with actual data while networks like \"testnet\", \"ropsten\" are test networks.
wallet_id = '60c9d9921c38030006675ff6' # String | Represents the unique ID of the specific Wallet.
opts = {
  context: 'context_example' # String | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. `context` is specified by the user.
}

begin
  # List Deposit Addresses
  result = api_instance.list_deposit_addresses(blockchain, network, wallet_id, opts)
  p result
rescue CryptoApis::ApiError => e
  puts "Error when calling InformativeApi->list_deposit_addresses: #{e}"
end
```

#### Using the list_deposit_addresses_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListDepositAddressesR>, Integer, Hash)> list_deposit_addresses_with_http_info(blockchain, network, wallet_id, opts)

```ruby
begin
  # List Deposit Addresses
  data, status_code, headers = api_instance.list_deposit_addresses_with_http_info(blockchain, network, wallet_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListDepositAddressesR>
rescue CryptoApis::ApiError => e
  puts "Error when calling InformativeApi->list_deposit_addresses_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **blockchain** | **String** | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc. |  |
| **network** | **String** | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot; are test networks. |  |
| **wallet_id** | **String** | Represents the unique ID of the specific Wallet. |  |
| **context** | **String** | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user. | [optional] |

### Return type

[**ListDepositAddressesR**](ListDepositAddressesR.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_supported_tokens

> <ListSupportedTokensR> list_supported_tokens(blockchain, network, opts)

List Supported Tokens

Through this endpoint customers can obtain information on multiple tokens at once.

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

api_instance = CryptoApis::InformativeApi.new
blockchain = 'ethereum' # String | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc.
network = 'mainnet' # String | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \"mainnet\" is the live network with actual data while networks like \"testnet\", \"ropsten\" are test networks.
opts = {
  context: 'context_example', # String | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. `context` is specified by the user.
  limit: 50, # Integer | Defines how many items should be returned in the response per page basis.
  offset: 10 # Integer | The starting index of the response items, i.e. where the response should start listing the returned items.
}

begin
  # List Supported Tokens
  result = api_instance.list_supported_tokens(blockchain, network, opts)
  p result
rescue CryptoApis::ApiError => e
  puts "Error when calling InformativeApi->list_supported_tokens: #{e}"
end
```

#### Using the list_supported_tokens_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListSupportedTokensR>, Integer, Hash)> list_supported_tokens_with_http_info(blockchain, network, opts)

```ruby
begin
  # List Supported Tokens
  data, status_code, headers = api_instance.list_supported_tokens_with_http_info(blockchain, network, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListSupportedTokensR>
rescue CryptoApis::ApiError => e
  puts "Error when calling InformativeApi->list_supported_tokens_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **blockchain** | **String** | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc. |  |
| **network** | **String** | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot; are test networks. |  |
| **context** | **String** | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user. | [optional] |
| **limit** | **Integer** | Defines how many items should be returned in the response per page basis. | [optional][default to 50] |
| **offset** | **Integer** | The starting index of the response items, i.e. where the response should start listing the returned items. | [optional][default to 0] |

### Return type

[**ListSupportedTokensR**](ListSupportedTokensR.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_wallet_transactions

> <ListWalletTransactionsR> list_wallet_transactions(blockchain, network, wallet_id, opts)

List Wallet Transactions

Through this endpoint customers can list Transactions from and to their Wallet. The data returned will include `transactionId`, `direction` of the transaction - incoming or outgoing, `amount` and more.

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

api_instance = CryptoApis::InformativeApi.new
blockchain = 'bitcoin' # String | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc.
network = 'mainnet' # String | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \"mainnet\" is the live network with actual data while networks like \"testnet\", \"ropsten\" are test networks.
wallet_id = '60c9d9921c38030006675ff6' # String | Represents the unique ID of the specific Wallet.
opts = {
  context: 'context_example', # String | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. `context` is specified by the user.
  limit: 50, # Integer | Defines how many items should be returned in the response per page basis.
  offset: 10 # Integer | The starting index of the response items, i.e. where the response should start listing the returned items.
}

begin
  # List Wallet Transactions
  result = api_instance.list_wallet_transactions(blockchain, network, wallet_id, opts)
  p result
rescue CryptoApis::ApiError => e
  puts "Error when calling InformativeApi->list_wallet_transactions: #{e}"
end
```

#### Using the list_wallet_transactions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListWalletTransactionsR>, Integer, Hash)> list_wallet_transactions_with_http_info(blockchain, network, wallet_id, opts)

```ruby
begin
  # List Wallet Transactions
  data, status_code, headers = api_instance.list_wallet_transactions_with_http_info(blockchain, network, wallet_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListWalletTransactionsR>
rescue CryptoApis::ApiError => e
  puts "Error when calling InformativeApi->list_wallet_transactions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **blockchain** | **String** | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc. |  |
| **network** | **String** | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot; are test networks. |  |
| **wallet_id** | **String** | Represents the unique ID of the specific Wallet. |  |
| **context** | **String** | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user. | [optional] |
| **limit** | **Integer** | Defines how many items should be returned in the response per page basis. | [optional][default to 50] |
| **offset** | **Integer** | The starting index of the response items, i.e. where the response should start listing the returned items. | [optional][default to 0] |

### Return type

[**ListWalletTransactionsR**](ListWalletTransactionsR.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

