# CryptoApis::ManageSubscriptionsApi

All URIs are relative to *https://rest.cryptoapis.io/v2*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**activate_blockchain_event_subscription**](ManageSubscriptionsApi.md#activate_blockchain_event_subscription) | **POST** /blockchain-events/subscriptions/{referenceId}/activate | Activate Blockchain Event Subscription |
| [**delete_blockchain_event_subscription**](ManageSubscriptionsApi.md#delete_blockchain_event_subscription) | **DELETE** /blockchain-events/{blockchain}/{network}/subscriptions/{referenceId} | Delete Blockchain Event Subscription |
| [**get_blockchain_event_subscription_details_by_reference_id**](ManageSubscriptionsApi.md#get_blockchain_event_subscription_details_by_reference_id) | **GET** /blockchain-events/subscriptions/{referenceId} | Get Blockchain Event Subscription Details By Reference ID |
| [**list_blockchain_events_subscriptions**](ManageSubscriptionsApi.md#list_blockchain_events_subscriptions) | **GET** /blockchain-events/{blockchain}/{network}/subscriptions | List Blockchain Events Subscriptions |


## activate_blockchain_event_subscription

> <ActivateBlockchainEventSubscriptionR> activate_blockchain_event_subscription(reference_id, opts)

Activate Blockchain Event Subscription

Through this endpoint customers can reactivate an event subscription (callback) which has been deactivated by the system. Deactivations could happen due to various reasons, most often \"maximum retry attempts reached\".

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

api_instance = CryptoApis::ManageSubscriptionsApi.new
reference_id = 'bc243c86-0902-4386-b30d-e6b30fa1f2aa' # String | Represents a unique ID used to reference the specific callback subscription.
opts = {
  context: 'yourExampleString', # String | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. `context` is specified by the user.
  activate_blockchain_event_subscription_rb: CryptoApis::ActivateBlockchainEventSubscriptionRB.new({data: CryptoApis::ActivateBlockchainEventSubscriptionRBData.new({item: 3.56})}) # ActivateBlockchainEventSubscriptionRB | 
}

begin
  # Activate Blockchain Event Subscription
  result = api_instance.activate_blockchain_event_subscription(reference_id, opts)
  p result
rescue CryptoApis::ApiError => e
  puts "Error when calling ManageSubscriptionsApi->activate_blockchain_event_subscription: #{e}"
end
```

#### Using the activate_blockchain_event_subscription_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ActivateBlockchainEventSubscriptionR>, Integer, Hash)> activate_blockchain_event_subscription_with_http_info(reference_id, opts)

```ruby
begin
  # Activate Blockchain Event Subscription
  data, status_code, headers = api_instance.activate_blockchain_event_subscription_with_http_info(reference_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ActivateBlockchainEventSubscriptionR>
rescue CryptoApis::ApiError => e
  puts "Error when calling ManageSubscriptionsApi->activate_blockchain_event_subscription_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **reference_id** | **String** | Represents a unique ID used to reference the specific callback subscription. |  |
| **context** | **String** | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user. | [optional] |
| **activate_blockchain_event_subscription_rb** | [**ActivateBlockchainEventSubscriptionRB**](ActivateBlockchainEventSubscriptionRB.md) |  | [optional] |

### Return type

[**ActivateBlockchainEventSubscriptionR**](ActivateBlockchainEventSubscriptionR.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_blockchain_event_subscription

> <DeleteBlockchainEventSubscriptionR> delete_blockchain_event_subscription(blockchain, network, reference_id, opts)

Delete Blockchain Event Subscription

Through this endpoint the customer can delete blockchain event subscriptions they have by attributes `referenceId` and `network`.    Currently Crypto APIs 2.0 offers certain Blockchain event endpoints which allow the user to subscribe for one/a few/all and receive callback notifications when the specific event occurs.    {note}To have an operational callback subscription, you need to first verify a domain for the Callback URL. Please see more information on Callbacks [here](https://developers.cryptoapis.io/technical-documentation/general-information/callbacks#callback-url).{/note}    {warning}Crypto APIs will notify the user **only when** the event occurs. There are cases when the specific event doesn't happen at all, or takes a long time to do so. A callback notification **will not** be sent if the event does not or cannot occur, or will take long time to occur.{/warning}

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

api_instance = CryptoApis::ManageSubscriptionsApi.new
blockchain = 'bitcoin' # String | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc.
network = 'mainnet' # String | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \"mainnet\" is the live network with actual data while networks like \"testnet\", \"ropsten\" are test networks.
reference_id = 'd3fd6a0e-f2b6-4bb5-9fd3-7944bcec9e9f' # String | Represents a unique ID used to reference the specific callback subscription.
opts = {
  context: 'yourExampleString' # String | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. `context` is specified by the user.
}

begin
  # Delete Blockchain Event Subscription
  result = api_instance.delete_blockchain_event_subscription(blockchain, network, reference_id, opts)
  p result
rescue CryptoApis::ApiError => e
  puts "Error when calling ManageSubscriptionsApi->delete_blockchain_event_subscription: #{e}"
end
```

#### Using the delete_blockchain_event_subscription_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteBlockchainEventSubscriptionR>, Integer, Hash)> delete_blockchain_event_subscription_with_http_info(blockchain, network, reference_id, opts)

```ruby
begin
  # Delete Blockchain Event Subscription
  data, status_code, headers = api_instance.delete_blockchain_event_subscription_with_http_info(blockchain, network, reference_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteBlockchainEventSubscriptionR>
rescue CryptoApis::ApiError => e
  puts "Error when calling ManageSubscriptionsApi->delete_blockchain_event_subscription_with_http_info: #{e}"
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

[**DeleteBlockchainEventSubscriptionR**](DeleteBlockchainEventSubscriptionR.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_blockchain_event_subscription_details_by_reference_id

> <GetBlockchainEventSubscriptionDetailsByReferenceIDR> get_blockchain_event_subscription_details_by_reference_id(reference_id, opts)

Get Blockchain Event Subscription Details By Reference ID

Through this endpoint the customer can get detailed information for a callback subscription by providing its reference ID.    Currently Crypto APIs 2.0 offers certain Blockchain event endpoints which allow the user to subscribe for one/a few/all and receive callback notifications when the specific event occurs.

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

api_instance = CryptoApis::ManageSubscriptionsApi.new
reference_id = 'bc243c86-0902-4386-b30d-e6b30fa1f2aa' # String | Represents a unique ID used to reference the specific callback subscription.
opts = {
  context: 'yourExampleString' # String | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. `context` is specified by the user.
}

begin
  # Get Blockchain Event Subscription Details By Reference ID
  result = api_instance.get_blockchain_event_subscription_details_by_reference_id(reference_id, opts)
  p result
rescue CryptoApis::ApiError => e
  puts "Error when calling ManageSubscriptionsApi->get_blockchain_event_subscription_details_by_reference_id: #{e}"
end
```

#### Using the get_blockchain_event_subscription_details_by_reference_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetBlockchainEventSubscriptionDetailsByReferenceIDR>, Integer, Hash)> get_blockchain_event_subscription_details_by_reference_id_with_http_info(reference_id, opts)

```ruby
begin
  # Get Blockchain Event Subscription Details By Reference ID
  data, status_code, headers = api_instance.get_blockchain_event_subscription_details_by_reference_id_with_http_info(reference_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetBlockchainEventSubscriptionDetailsByReferenceIDR>
rescue CryptoApis::ApiError => e
  puts "Error when calling ManageSubscriptionsApi->get_blockchain_event_subscription_details_by_reference_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **reference_id** | **String** | Represents a unique ID used to reference the specific callback subscription. |  |
| **context** | **String** | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user. | [optional] |

### Return type

[**GetBlockchainEventSubscriptionDetailsByReferenceIDR**](GetBlockchainEventSubscriptionDetailsByReferenceIDR.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_blockchain_events_subscriptions

> <ListBlockchainEventsSubscriptionsR> list_blockchain_events_subscriptions(blockchain, network, opts)

List Blockchain Events Subscriptions

Through this endpoint the customer can obtain a list of their callback subscriptions for the available Blockchain events.    Currently Crypto APIs 2.0 offers certain Blockchain event endpoints which allow the user to subscribe for one/a few/all and receive callback notifications when the specific event occurs.    {note}To have an operational callback subscription, you need to first verify a domain for the Callback URL. Please see more information on Callbacks [here](https://developers.cryptoapis.io/technical-documentation/general-information/callbacks#callback-url).{/note}

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

api_instance = CryptoApis::ManageSubscriptionsApi.new
blockchain = 'bitcoin' # String | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc.
network = 'mainnet' # String | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \"mainnet\" is the live network with actual data while networks like \"testnet\", \"ropsten\" are test networks.
opts = {
  context: 'yourExampleString', # String | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. `context` is specified by the user.
  limit: 50, # Integer | Defines how many items should be returned in the response per page basis.
  offset: 0 # Integer | The starting index of the response items, i.e. where the response should start listing the returned items.
}

begin
  # List Blockchain Events Subscriptions
  result = api_instance.list_blockchain_events_subscriptions(blockchain, network, opts)
  p result
rescue CryptoApis::ApiError => e
  puts "Error when calling ManageSubscriptionsApi->list_blockchain_events_subscriptions: #{e}"
end
```

#### Using the list_blockchain_events_subscriptions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListBlockchainEventsSubscriptionsR>, Integer, Hash)> list_blockchain_events_subscriptions_with_http_info(blockchain, network, opts)

```ruby
begin
  # List Blockchain Events Subscriptions
  data, status_code, headers = api_instance.list_blockchain_events_subscriptions_with_http_info(blockchain, network, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListBlockchainEventsSubscriptionsR>
rescue CryptoApis::ApiError => e
  puts "Error when calling ManageSubscriptionsApi->list_blockchain_events_subscriptions_with_http_info: #{e}"
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

[**ListBlockchainEventsSubscriptionsR**](ListBlockchainEventsSubscriptionsR.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

