# CryptoApis::AutomaticTokensForwardingApi

All URIs are relative to *https://rest.cryptoapis.io/v2*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_tokens_to_existing_from_address**](AutomaticTokensForwardingApi.md#add_tokens_to_existing_from_address) | **POST** /blockchain-automations/{blockchain}/{network}/tokens-forwarding/automations/add-token | Add Tokens To Existing fromAddress |
| [**create_automatic_tokens_forwarding**](AutomaticTokensForwardingApi.md#create_automatic_tokens_forwarding) | **POST** /blockchain-automations/{blockchain}/{network}/tokens-forwarding/automations | Create Automatic Tokens Forwarding |
| [**delete_automatic_tokens_forwarding**](AutomaticTokensForwardingApi.md#delete_automatic_tokens_forwarding) | **DELETE** /blockchain-automations/{blockchain}/{network}/tokens-forwarding/automations/{referenceId} | Delete Automatic Tokens Forwarding |
| [**get_fee_address_details**](AutomaticTokensForwardingApi.md#get_fee_address_details) | **GET** /blockchain-automations/{blockchain}/{network}/tokens-forwarding/fee-addresses | Get Fee Address Details |
| [**list_tokens_forwarding_automations**](AutomaticTokensForwardingApi.md#list_tokens_forwarding_automations) | **GET** /blockchain-automations/{blockchain}/{network}/tokens-forwarding/automations | List Tokens Forwarding Automations |


## add_tokens_to_existing_from_address

> <AddTokensToExistingFromAddressR> add_tokens_to_existing_from_address(blockchain, network, opts)

Add Tokens To Existing fromAddress

Through this endpoint customers can add **Automatic Tokens forwardings** to an already existing `fromAddress`. Unlike the \"Create Automatic Tokens Forwarding\" endpoint, where the `fromAddress` is generated each time, with this endpoint customers can add an automation from another token to one and the same `fromAddress`.    The `fromAddress` can be used as a deposit address. Any funds received by this address will be automatically forwarded to `toAddress` based on what the customer has set for the automation. The  `toAddress` is essentially the main address and destination for the automatic tokens forwarding.    There is also a `minimumTransferAmount` which only when reached will then trigger the forwarding. Through this the customer can save from fees.    Moreover, `feePriority` can be also set,  which defines how quickly to move the tokens once they are received. The higher priority, the larger the fee will be. It can be \"SLOW\", \"STANDARD\" or \"FAST\".    For this automatic forwarding the customer can set a callback subscription.    {warning}Currently we support fungible tokens (ERC-20) **only**, NFTs (ERC-721) are **not** supported.{/warning}    {warning}The subscription will work for all incoming transactions until it is deleted. There is no need to do that for every transaction.{/warning}

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

api_instance = CryptoApis::AutomaticTokensForwardingApi.new
blockchain = 'bitcoin' # String | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc.
network = 'mainnet' # String | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \"mainnet\" is the live network with actual data while networks like \"testnet\", \"ropsten\" are test networks.
opts = {
  context: 'yourExampleString', # String | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. `context` is specified by the user.
  add_tokens_to_existing_from_address_rb: CryptoApis::AddTokensToExistingFromAddressRB.new({data: CryptoApis::AddTokensToExistingFromAddressRBData.new({item: CryptoApis::AddTokensToExistingFromAddressRBDataItem.new({callback_url: 'https://example.com', confirmations_count: 3, fee_priority: 'slow', from_address: 'mizRduUBKEbJ6uzYJUegPh78gEGgM3WjAr', minimum_transfer_amount: '0.00001', to_address: 'mnumE76iEKN47bUsdni85oped5D1fRwKWi', token_data: CryptoApis::AddTokensToExistingFromAddressRBTokenDataBitcoinOmniToken.new({property_id: 2})})})}) # AddTokensToExistingFromAddressRB | 
}

begin
  # Add Tokens To Existing fromAddress
  result = api_instance.add_tokens_to_existing_from_address(blockchain, network, opts)
  p result
rescue CryptoApis::ApiError => e
  puts "Error when calling AutomaticTokensForwardingApi->add_tokens_to_existing_from_address: #{e}"
end
```

#### Using the add_tokens_to_existing_from_address_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AddTokensToExistingFromAddressR>, Integer, Hash)> add_tokens_to_existing_from_address_with_http_info(blockchain, network, opts)

```ruby
begin
  # Add Tokens To Existing fromAddress
  data, status_code, headers = api_instance.add_tokens_to_existing_from_address_with_http_info(blockchain, network, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AddTokensToExistingFromAddressR>
rescue CryptoApis::ApiError => e
  puts "Error when calling AutomaticTokensForwardingApi->add_tokens_to_existing_from_address_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **blockchain** | **String** | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc. |  |
| **network** | **String** | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot; are test networks. |  |
| **context** | **String** | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user. | [optional] |
| **add_tokens_to_existing_from_address_rb** | [**AddTokensToExistingFromAddressRB**](AddTokensToExistingFromAddressRB.md) |  | [optional] |

### Return type

[**AddTokensToExistingFromAddressR**](AddTokensToExistingFromAddressR.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_automatic_tokens_forwarding

> <CreateAutomaticTokensForwardingR> create_automatic_tokens_forwarding(blockchain, network, opts)

Create Automatic Tokens Forwarding

Through this endpoint customers can set up an automatic forwarding function specifically for tokens (**not** coins). They can have a `toAddress` which is essentially the main address and the destination for the automatic tokens forwarding.     There is also a `minimumTransferAmount` which only when reached will then trigger the forwarding. Through this the customer can save from fees.    Moreover, `feePriority` can be also set,  which defines how quickly to move the tokens once they are received. The higher priority, the larger the fee will be. It can be \"SLOW\", \"STANDARD\" or \"FAST\".    The response of this endpoint contains an attribute `fromAddress` which can be used as a deposit address. Any funds received by this address will be automatically forwarded to `toAddress` based on what the customer has set for the automation.    For this automatic forwarding the customer can set a callback subscription.    {warning}Currently we support fungible tokens (ERC-20) **only**, NFTs (ERC-721) are **not** supported.{/warning}    {warning}The subscription will work for all incoming transactions until it is deleted. There is no need to do that for every transaction.{/warning}    {note}This endpoint generates a new `fromAddress` each time.{/note}

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

api_instance = CryptoApis::AutomaticTokensForwardingApi.new
blockchain = 'bitcoin' # String | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc.
network = 'mainnet' # String | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \"mainnet\" is the live network with actual data while networks like \"testnet\", \"ropsten\" are test networks.
opts = {
  context: 'yourExampleString', # String | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. `context` is specified by the user.
  create_automatic_tokens_forwarding_rb: CryptoApis::CreateAutomaticTokensForwardingRB.new({data: CryptoApis::CreateAutomaticTokensForwardingRBData.new({item: CryptoApis::CreateAutomaticTokensForwardingRBDataItem.new({callback_url: 'https://example.com', confirmations_count: '3', fee_priority: 'slow', minimum_transfer_amount: '0.00002', to_address: 'tb1q54j7qcu7kgsrx87yn0r9zjdvsxrnvxg4qua2z6', token_data: CryptoApis::CreateAutomaticTokensForwardingRBTokenDataBitcoinOmniToken.new({property_id: 31})})})}) # CreateAutomaticTokensForwardingRB | 
}

begin
  # Create Automatic Tokens Forwarding
  result = api_instance.create_automatic_tokens_forwarding(blockchain, network, opts)
  p result
rescue CryptoApis::ApiError => e
  puts "Error when calling AutomaticTokensForwardingApi->create_automatic_tokens_forwarding: #{e}"
end
```

#### Using the create_automatic_tokens_forwarding_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateAutomaticTokensForwardingR>, Integer, Hash)> create_automatic_tokens_forwarding_with_http_info(blockchain, network, opts)

```ruby
begin
  # Create Automatic Tokens Forwarding
  data, status_code, headers = api_instance.create_automatic_tokens_forwarding_with_http_info(blockchain, network, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateAutomaticTokensForwardingR>
rescue CryptoApis::ApiError => e
  puts "Error when calling AutomaticTokensForwardingApi->create_automatic_tokens_forwarding_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **blockchain** | **String** | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc. |  |
| **network** | **String** | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot; are test networks. |  |
| **context** | **String** | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user. | [optional] |
| **create_automatic_tokens_forwarding_rb** | [**CreateAutomaticTokensForwardingRB**](CreateAutomaticTokensForwardingRB.md) |  | [optional] |

### Return type

[**CreateAutomaticTokensForwardingR**](CreateAutomaticTokensForwardingR.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_automatic_tokens_forwarding

> <DeleteAutomaticTokensForwardingR> delete_automatic_tokens_forwarding(blockchain, network, reference_id, opts)

Delete Automatic Tokens Forwarding

Through this endpoint customers can delete a forwarding function they have set for **tokens** (**not** coins).    By setting a `fromAddress` and a `toAddress`, and specifying the amount, tokens can be transferred between addresses.     A `feePriority` will be returned which represents the fee priority of the automation whether it is \"SLOW\", \"STANDARD\" OR \"FAST\".    {warning}Currently we support fungible tokens (ERC-20) **only**, NFTs (ERC-721) are **not** supported.{/warning}    {warning}The subscription will work for all incoming transactions until it is deleted. There is no need to do that for every transaction.{/warning}

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

api_instance = CryptoApis::AutomaticTokensForwardingApi.new
blockchain = 'bitcoin' # String | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc.
network = 'mainnet' # String | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \"mainnet\" is the live network with actual data while networks like \"testnet\", \"ropsten\" are test networks.
reference_id = '6017dd02a309213863be9e55' # String | Represents a unique ID used to reference the specific callback subscription.
opts = {
  context: 'yourExampleString' # String | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. `context` is specified by the user.
}

begin
  # Delete Automatic Tokens Forwarding
  result = api_instance.delete_automatic_tokens_forwarding(blockchain, network, reference_id, opts)
  p result
rescue CryptoApis::ApiError => e
  puts "Error when calling AutomaticTokensForwardingApi->delete_automatic_tokens_forwarding: #{e}"
end
```

#### Using the delete_automatic_tokens_forwarding_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteAutomaticTokensForwardingR>, Integer, Hash)> delete_automatic_tokens_forwarding_with_http_info(blockchain, network, reference_id, opts)

```ruby
begin
  # Delete Automatic Tokens Forwarding
  data, status_code, headers = api_instance.delete_automatic_tokens_forwarding_with_http_info(blockchain, network, reference_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteAutomaticTokensForwardingR>
rescue CryptoApis::ApiError => e
  puts "Error when calling AutomaticTokensForwardingApi->delete_automatic_tokens_forwarding_with_http_info: #{e}"
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

[**DeleteAutomaticTokensForwardingR**](DeleteAutomaticTokensForwardingR.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_fee_address_details

> <GetFeeAddressDetailsR> get_fee_address_details(blockchain, network, opts)

Get Fee Address Details

Through this endpoint customers can obtain details about a fee address. Only one fee address per currency per network for a user's account can be set no matter how many tokens or subscriptions they have or want to automatically forward.    {warning}Currently we support fungible tokens (ERC-20) **only**, NFTs (ERC-721) are **not** supported.{/warning}

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

api_instance = CryptoApis::AutomaticTokensForwardingApi.new
blockchain = 'bitcoin' # String | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc.
network = 'mainnet' # String | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \"mainnet\" is the live network with actual data while networks like \"testnet\", \"ropsten\" are test networks.
opts = {
  context: 'yourExampleString' # String | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. `context` is specified by the user.
}

begin
  # Get Fee Address Details
  result = api_instance.get_fee_address_details(blockchain, network, opts)
  p result
rescue CryptoApis::ApiError => e
  puts "Error when calling AutomaticTokensForwardingApi->get_fee_address_details: #{e}"
end
```

#### Using the get_fee_address_details_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetFeeAddressDetailsR>, Integer, Hash)> get_fee_address_details_with_http_info(blockchain, network, opts)

```ruby
begin
  # Get Fee Address Details
  data, status_code, headers = api_instance.get_fee_address_details_with_http_info(blockchain, network, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetFeeAddressDetailsR>
rescue CryptoApis::ApiError => e
  puts "Error when calling AutomaticTokensForwardingApi->get_fee_address_details_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **blockchain** | **String** | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc. |  |
| **network** | **String** | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot; are test networks. |  |
| **context** | **String** | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user. | [optional] |

### Return type

[**GetFeeAddressDetailsR**](GetFeeAddressDetailsR.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_tokens_forwarding_automations

> <ListTokensForwardingAutomationsR> list_tokens_forwarding_automations(blockchain, network, opts)

List Tokens Forwarding Automations

Through this endpoint customers can list all of their **tokens** forwarding automations (**not** coins).    Customers can set up automatic forwarding functions for tokens by setting a `fromAddress` and a `toAddress`, and specifying the amount that can be transferred between addresses.     A `feePriority` will be returned which represents the fee priority of the automation whether it is \"SLOW\", \"STANDARD\" OR \"FAST\".     {warning}Currently we support fungible tokens (ERC-20) **only**, NFTs (ERC-721) are **not** supported.{/warning}    {warning}The subscription will work for all transactions until it is deleted. There is no need to do that for every transaction.{/warning}

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

api_instance = CryptoApis::AutomaticTokensForwardingApi.new
blockchain = 'bitcoin' # String | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc.
network = 'mainnet' # String | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \"mainnet\" is the live network with actual data while networks like \"testnet\", \"ropsten\" are test networks.
opts = {
  context: 'yourExampleString', # String | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. `context` is specified by the user.
  limit: 50, # Integer | Defines how many items should be returned in the response per page basis.
  offset: 0 # Integer | The starting index of the response items, i.e. where the response should start listing the returned items.
}

begin
  # List Tokens Forwarding Automations
  result = api_instance.list_tokens_forwarding_automations(blockchain, network, opts)
  p result
rescue CryptoApis::ApiError => e
  puts "Error when calling AutomaticTokensForwardingApi->list_tokens_forwarding_automations: #{e}"
end
```

#### Using the list_tokens_forwarding_automations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListTokensForwardingAutomationsR>, Integer, Hash)> list_tokens_forwarding_automations_with_http_info(blockchain, network, opts)

```ruby
begin
  # List Tokens Forwarding Automations
  data, status_code, headers = api_instance.list_tokens_forwarding_automations_with_http_info(blockchain, network, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListTokensForwardingAutomationsR>
rescue CryptoApis::ApiError => e
  puts "Error when calling AutomaticTokensForwardingApi->list_tokens_forwarding_automations_with_http_info: #{e}"
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

[**ListTokensForwardingAutomationsR**](ListTokensForwardingAutomationsR.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

