# CryptoApis::AutomaticCoinsForwardingApi

All URIs are relative to *https://rest.cryptoapis.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_automatic_coins_forwarding**](AutomaticCoinsForwardingApi.md#create_automatic_coins_forwarding) | **POST** /blockchain-automations/{blockchain}/{network}/coins-forwarding/automations | Create Automatic Coins Forwarding |
| [**delete_automatic_coins_forwarding**](AutomaticCoinsForwardingApi.md#delete_automatic_coins_forwarding) | **DELETE** /blockchain-automations/{blockchain}/{network}/coins-forwarding/automations/{referenceId} | Delete Automatic Coins Forwarding |
| [**list_coins_forwarding_automations**](AutomaticCoinsForwardingApi.md#list_coins_forwarding_automations) | **GET** /blockchain-automations/{blockchain}/{network}/coins-forwarding/automations | List Coins Forwarding Automations |


## create_automatic_coins_forwarding

> <CreateAutomaticCoinsForwardingR> create_automatic_coins_forwarding(blockchain, network, opts)

Create Automatic Coins Forwarding

Through this endpoint customers can set up an automatic forwarding function specifically for coins (**not** tokens). They can have a `toAddress` which is essentially the main address and the destination for the automatic coins forwarding.     There is also a `minimumTransferAmount` which only when reached will then trigger the forwarding. Through this the customer can save from fees.    Moreover, `feePriority` can be also set,  which defines how quickly to move the coins once they are received. The higher priority, the larger the fee will be. It can be \"SLOW\", \"STANDARD\" or \"FAST\".    The response of this endpoint contains an attribute `fromAddress` which can be used as a deposit address. Any funds received by this address will be automatically forwarded to `toAddress` based on what the customer has set for the automation.    For this automatic forwarding the customer can set a callback subscription.    {warning}The subscription will work for all incoming transactions until it is deleted. There is no need to do that for every transaction.{/warning}    {note}This endpoint generates a new `fromAddress` each time.{/note}

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

api_instance = CryptoApis::AutomaticCoinsForwardingApi.new
blockchain = 'bitcoin' # String | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc.
network = 'mainnet' # String | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \"mainnet\" is the live network with actual data while networks like \"testnet\", \"ropsten\" are test networks.
opts = {
  context: 'yourExampleString', # String | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. `context` is specified by the user.
  create_automatic_coins_forwarding_rb: CryptoApis::CreateAutomaticCoinsForwardingRB.new({data: CryptoApis::CreateAutomaticCoinsForwardingRBData.new({item: CryptoApis::CreateAutomaticCoinsForwardingRBDataItem.new({callback_secret_key: 'yourSecretString', callback_url: 'https://example.com', confirmations_count: 3, fee_priority: 'slow', minimum_transfer_amount: '0.02', to_address: 'mzYijhgmzZrmuB7wBDazRKirnChKyow4M3'})})}) # CreateAutomaticCoinsForwardingRB | 
}

begin
  # Create Automatic Coins Forwarding
  result = api_instance.create_automatic_coins_forwarding(blockchain, network, opts)
  p result
rescue CryptoApis::ApiError => e
  puts "Error when calling AutomaticCoinsForwardingApi->create_automatic_coins_forwarding: #{e}"
end
```

#### Using the create_automatic_coins_forwarding_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateAutomaticCoinsForwardingR>, Integer, Hash)> create_automatic_coins_forwarding_with_http_info(blockchain, network, opts)

```ruby
begin
  # Create Automatic Coins Forwarding
  data, status_code, headers = api_instance.create_automatic_coins_forwarding_with_http_info(blockchain, network, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateAutomaticCoinsForwardingR>
rescue CryptoApis::ApiError => e
  puts "Error when calling AutomaticCoinsForwardingApi->create_automatic_coins_forwarding_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **blockchain** | **String** | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc. |  |
| **network** | **String** | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot; are test networks. |  |
| **context** | **String** | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user. | [optional] |
| **create_automatic_coins_forwarding_rb** | [**CreateAutomaticCoinsForwardingRB**](CreateAutomaticCoinsForwardingRB.md) |  | [optional] |

### Return type

[**CreateAutomaticCoinsForwardingR**](CreateAutomaticCoinsForwardingR.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_automatic_coins_forwarding

> <DeleteAutomaticCoinsForwardingR> delete_automatic_coins_forwarding(blockchain, network, reference_id, opts)

Delete Automatic Coins Forwarding

Through this endpoint customers can delete a forwarding function they have set for **coins** (**not** tokens).    By setting a `fromAddress` and a `toAddress`, and specifying the amount, coins can be transferred between addresses.     A `feePriority` will be returned which represents the fee priority of the automation whether it is \"SLOW\", \"STANDARD\" OR \"FAST\".    {warning}The subscription will work for all incoming transactions until it is deleted. There is no need to do that for every transaction.{/warning}

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

api_instance = CryptoApis::AutomaticCoinsForwardingApi.new
blockchain = 'bitcoin' # String | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc.
network = 'mainnet' # String | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \"mainnet\" is the live network with actual data while networks like \"testnet\", \"ropsten\" are test networks.
reference_id = '600955ea5e75d660e71d3c7d' # String | Represents a unique ID used to reference the specific callback subscription.
opts = {
  context: 'yourExampleString' # String | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. `context` is specified by the user.
}

begin
  # Delete Automatic Coins Forwarding
  result = api_instance.delete_automatic_coins_forwarding(blockchain, network, reference_id, opts)
  p result
rescue CryptoApis::ApiError => e
  puts "Error when calling AutomaticCoinsForwardingApi->delete_automatic_coins_forwarding: #{e}"
end
```

#### Using the delete_automatic_coins_forwarding_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteAutomaticCoinsForwardingR>, Integer, Hash)> delete_automatic_coins_forwarding_with_http_info(blockchain, network, reference_id, opts)

```ruby
begin
  # Delete Automatic Coins Forwarding
  data, status_code, headers = api_instance.delete_automatic_coins_forwarding_with_http_info(blockchain, network, reference_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteAutomaticCoinsForwardingR>
rescue CryptoApis::ApiError => e
  puts "Error when calling AutomaticCoinsForwardingApi->delete_automatic_coins_forwarding_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **blockchain** | **String** | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc. |  |
| **network** | **String** | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot; are test networks. |  |
| **reference_id** | **String** | Represents a unique ID used to reference the specific callback subscription. |  |
| **context** | **String** | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user. | [optional] |

### Return type

[**DeleteAutomaticCoinsForwardingR**](DeleteAutomaticCoinsForwardingR.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_coins_forwarding_automations

> <ListCoinsForwardingAutomationsR> list_coins_forwarding_automations(blockchain, network, opts)

List Coins Forwarding Automations

Through this endpoint customers can list all of their **coins** forwarding automations (**not** tokens).    Customers can set up automatic forwarding functions for coins by setting a `fromAddress` and a `toAddress`, and specifying the amount that can be transferred between addresses.     A `feePriority` will be returned which represents the fee priority of the automation whether it is \"SLOW\", \"STANDARD\" OR \"FAST\".    {warning}The subscription will work for all transactions until it is deleted. There is no need to do that for every transaction.{/warning}

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

api_instance = CryptoApis::AutomaticCoinsForwardingApi.new
blockchain = 'bitcoin' # String | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc.
network = 'mainnet' # String | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \"mainnet\" is the live network with actual data while networks like \"testnet\", \"ropsten\" are test networks.
opts = {
  context: 'yourExampleString', # String | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. `context` is specified by the user.
  limit: 50, # Integer | Defines how many items should be returned in the response per page basis.
  offset: 0 # Integer | The starting index of the response items, i.e. where the response should start listing the returned items.
}

begin
  # List Coins Forwarding Automations
  result = api_instance.list_coins_forwarding_automations(blockchain, network, opts)
  p result
rescue CryptoApis::ApiError => e
  puts "Error when calling AutomaticCoinsForwardingApi->list_coins_forwarding_automations: #{e}"
end
```

#### Using the list_coins_forwarding_automations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListCoinsForwardingAutomationsR>, Integer, Hash)> list_coins_forwarding_automations_with_http_info(blockchain, network, opts)

```ruby
begin
  # List Coins Forwarding Automations
  data, status_code, headers = api_instance.list_coins_forwarding_automations_with_http_info(blockchain, network, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListCoinsForwardingAutomationsR>
rescue CryptoApis::ApiError => e
  puts "Error when calling AutomaticCoinsForwardingApi->list_coins_forwarding_automations_with_http_info: #{e}"
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

[**ListCoinsForwardingAutomationsR**](ListCoinsForwardingAutomationsR.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

