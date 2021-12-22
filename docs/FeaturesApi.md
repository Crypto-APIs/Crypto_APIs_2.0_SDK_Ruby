# CryptoApis::FeaturesApi

All URIs are relative to *https://rest.cryptoapis.io/v2*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**broadcast_locally_signed_transaction**](FeaturesApi.md#broadcast_locally_signed_transaction) | **POST** /blockchain-tools/{blockchain}/{network}/transactions/broadcast | Broadcast Locally Signed Transaction |
| [**get_eip_1559_fee_recommendations**](FeaturesApi.md#get_eip_1559_fee_recommendations) | **GET** /blockchain-tools/{blockchain}/{network}/fees/eip1559 | Get EIP 1559 Fee Recommendations |
| [**validate_address**](FeaturesApi.md#validate_address) | **POST** /blockchain-tools/{blockchain}/{network}/addresses/validate | Validate Address |


## broadcast_locally_signed_transaction

> <BroadcastLocallySignedTransactionR> broadcast_locally_signed_transaction(blockchain, network, opts)

Broadcast Locally Signed Transaction

Through this endpoint customers can broadcast transactions that have been already signed locally. Instead of using a node for broadcasting a signed transaction users can use this endpoint. We then keep the user posted about the status by sending you a callback with a success or failure status.    {warning}This can be prepared and signed **only** locally, not through the API. We can provide support only for the process of broadcasting.{/warning}

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

api_instance = CryptoApis::FeaturesApi.new
blockchain = 'bitcoin' # String | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc.
network = 'mainnet' # String | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \"mainnet\" is the live network with actual data while networks like \"testnet\", \"ropsten\" are test networks.
opts = {
  context: 'context_example', # String | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. `context` is specified by the user.
  broadcast_locally_signed_transaction_rb: CryptoApis::BroadcastLocallySignedTransactionRB.new({data: CryptoApis::BroadcastLocallySignedTransactionRBData.new({item: CryptoApis::BroadcastLocallySignedTransactionRBDataItem.new({signed_transaction_hex: '0xf86a22827d00831e8480941b85a43e2e7f52e766ddfdfa2b901c42cb1201be8801b27f33b807c0008029a084ccbf02b27e0842fb1eda7a187a5589c3759be0e969e0ca989dc469a5e5e394a02e111e1156b197f1de4c1d9ba4af26e50665ea6d617d05b3e4047da12b915e69'})})}) # BroadcastLocallySignedTransactionRB | 
}

begin
  # Broadcast Locally Signed Transaction
  result = api_instance.broadcast_locally_signed_transaction(blockchain, network, opts)
  p result
rescue CryptoApis::ApiError => e
  puts "Error when calling FeaturesApi->broadcast_locally_signed_transaction: #{e}"
end
```

#### Using the broadcast_locally_signed_transaction_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BroadcastLocallySignedTransactionR>, Integer, Hash)> broadcast_locally_signed_transaction_with_http_info(blockchain, network, opts)

```ruby
begin
  # Broadcast Locally Signed Transaction
  data, status_code, headers = api_instance.broadcast_locally_signed_transaction_with_http_info(blockchain, network, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BroadcastLocallySignedTransactionR>
rescue CryptoApis::ApiError => e
  puts "Error when calling FeaturesApi->broadcast_locally_signed_transaction_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **blockchain** | **String** | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc. |  |
| **network** | **String** | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot; are test networks. |  |
| **context** | **String** | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user. | [optional] |
| **broadcast_locally_signed_transaction_rb** | [**BroadcastLocallySignedTransactionRB**](BroadcastLocallySignedTransactionRB.md) |  | [optional] |

### Return type

[**BroadcastLocallySignedTransactionR**](BroadcastLocallySignedTransactionR.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_eip_1559_fee_recommendations

> <GetEIP1559FeeRecommendationsR> get_eip_1559_fee_recommendations(network, blockchain, opts)

Get EIP 1559 Fee Recommendations

Through this endpoint customers can obtain fee recommendations specifically for EIP 1559.

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

api_instance = CryptoApis::FeaturesApi.new
network = 'mainnet' # String | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \"mainnet\" is the live network with actual data while networks like \"testnet\", \"ropsten\" are test networks.
blockchain = 'ethereum' # String | Represents the specific blockchain protocol name, e.g. Ethereum.
opts = {
  context: 'context_example' # String | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. `context` is specified by the user.
}

begin
  # Get EIP 1559 Fee Recommendations
  result = api_instance.get_eip_1559_fee_recommendations(network, blockchain, opts)
  p result
rescue CryptoApis::ApiError => e
  puts "Error when calling FeaturesApi->get_eip_1559_fee_recommendations: #{e}"
end
```

#### Using the get_eip_1559_fee_recommendations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetEIP1559FeeRecommendationsR>, Integer, Hash)> get_eip_1559_fee_recommendations_with_http_info(network, blockchain, opts)

```ruby
begin
  # Get EIP 1559 Fee Recommendations
  data, status_code, headers = api_instance.get_eip_1559_fee_recommendations_with_http_info(network, blockchain, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetEIP1559FeeRecommendationsR>
rescue CryptoApis::ApiError => e
  puts "Error when calling FeaturesApi->get_eip_1559_fee_recommendations_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **network** | **String** | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot; are test networks. |  |
| **blockchain** | **String** | Represents the specific blockchain protocol name, e.g. Ethereum. |  |
| **context** | **String** | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user. | [optional] |

### Return type

[**GetEIP1559FeeRecommendationsR**](GetEIP1559FeeRecommendationsR.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## validate_address

> <ValidateAddressR> validate_address(blockchain, network, opts)

Validate Address

This endpoint checks user public addresses whether they are valid or not.

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

api_instance = CryptoApis::FeaturesApi.new
blockchain = 'bitcoin' # String | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc.
network = 'mainnet' # String | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \"mainnet\" is the live network with actual data while networks like \"testnet\", \"ropsten\" are test networks.
opts = {
  context: 'context_example', # String | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. `context` is specified by the user.
  validate_address_rb: CryptoApis::ValidateAddressRB.new({data: CryptoApis::ValidateAddressRBData.new({item: CryptoApis::ValidateAddressRBDataItem.new({address: 'mho4jHBcrNCncKt38trJahXakuaBnS7LK5'})})}) # ValidateAddressRB | 
}

begin
  # Validate Address
  result = api_instance.validate_address(blockchain, network, opts)
  p result
rescue CryptoApis::ApiError => e
  puts "Error when calling FeaturesApi->validate_address: #{e}"
end
```

#### Using the validate_address_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ValidateAddressR>, Integer, Hash)> validate_address_with_http_info(blockchain, network, opts)

```ruby
begin
  # Validate Address
  data, status_code, headers = api_instance.validate_address_with_http_info(blockchain, network, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ValidateAddressR>
rescue CryptoApis::ApiError => e
  puts "Error when calling FeaturesApi->validate_address_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **blockchain** | **String** | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc. |  |
| **network** | **String** | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot; are test networks. |  |
| **context** | **String** | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user. | [optional] |
| **validate_address_rb** | [**ValidateAddressRB**](ValidateAddressRB.md) |  | [optional] |

### Return type

[**ValidateAddressR**](ValidateAddressR.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

