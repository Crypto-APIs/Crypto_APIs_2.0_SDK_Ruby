# CryptoApis::InformativeApi

All URIs are relative to *https://rest.cryptoapis.io/v2*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_wallet_asset_details**](InformativeApi.md#get_wallet_asset_details) | **GET** /wallet-as-a-service/wallets/{walletId}/{blockchain}/{network} | Get Wallet Asset Details |
| [**list_receiving_addresses**](InformativeApi.md#list_receiving_addresses) | **GET** /wallet-as-a-service/wallets/{walletId}/{blockchain}/{network}/addresses | List Receiving Addresses |
| [**list_supported_tokens**](InformativeApi.md#list_supported_tokens) | **GET** /wallet-as-a-service/info/{blockchain}/{network}/supported-tokens | List Supported Tokens |


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
network = 'mainnet' # String | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \"mainnet\" is the live network with actual data while networks like \"testnet\", \"ropsten\", \"rinkeby\" are test networks.
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
| **network** | **String** | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot;, \&quot;rinkeby\&quot; are test networks. |  |
| **wallet_id** | **String** | Defines the unique ID of the Wallet. |  |
| **context** | **String** | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user. | [optional] |

### Return type

[**GetWalletAssetDetailsR**](GetWalletAssetDetailsR.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_receiving_addresses

> <ListReceivingAddressesR> list_receiving_addresses(blockchain, network, wallet_id, opts)

List Receiving Addresses

Through this endpoint customers can pull a list of Deposit Addresses they have already generated. Deposit addresses are listed with their specific details such as unique ID.    {note}Please note that listing data from the same type will apply pagination on the results.{/note}

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
network = 'mainnet' # String | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \"mainnet\" is the live network with actual data while networks like \"testnet\", \"ropsten\", \"rinkeby\" are test networks.
wallet_id = '60c9d9921c38030006675ff6' # String | Represents the unique ID of the specific Wallet.
opts = {
  context: 'context_example' # String | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. `context` is specified by the user.
}

begin
  # List Receiving Addresses
  result = api_instance.list_receiving_addresses(blockchain, network, wallet_id, opts)
  p result
rescue CryptoApis::ApiError => e
  puts "Error when calling InformativeApi->list_receiving_addresses: #{e}"
end
```

#### Using the list_receiving_addresses_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListReceivingAddressesR>, Integer, Hash)> list_receiving_addresses_with_http_info(blockchain, network, wallet_id, opts)

```ruby
begin
  # List Receiving Addresses
  data, status_code, headers = api_instance.list_receiving_addresses_with_http_info(blockchain, network, wallet_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListReceivingAddressesR>
rescue CryptoApis::ApiError => e
  puts "Error when calling InformativeApi->list_receiving_addresses_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **blockchain** | **String** | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc. |  |
| **network** | **String** | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot;, \&quot;rinkeby\&quot; are test networks. |  |
| **wallet_id** | **String** | Represents the unique ID of the specific Wallet. |  |
| **context** | **String** | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user. | [optional] |

### Return type

[**ListReceivingAddressesR**](ListReceivingAddressesR.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_supported_tokens

> <ListSupportedTokensR> list_supported_tokens(blockchain, network, opts)

List Supported Tokens

Through this endpoint customers can obtain information on multiple tokens at once.     {note}Please note that listing data from the same type will apply pagination on the results.{/note}

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
network = 'mainnet' # String | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \"mainnet\" is the live network with actual data while networks like \"testnet\", \"ropsten\", \"rinkeby\" are test networks.
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
| **network** | **String** | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot;, \&quot;rinkeby\&quot; are test networks. |  |
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
