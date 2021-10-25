# CryptoApis::UTXOBasedApi

All URIs are relative to *https://rest.cryptoapis.io/v2*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**list_unspent_transaction_outputs_by_address**](UTXOBasedApi.md#list_unspent_transaction_outputs_by_address) | **GET** /blockchain-data/{blockchain}/{network}/addresses/{address}/unspent | List Unspent Transaction Outputs By Address |


## list_unspent_transaction_outputs_by_address

> <ListUnspentTransactionOutputsByAddressR> list_unspent_transaction_outputs_by_address(blockchain, network, address, opts)

List Unspent Transaction Outputs By Address

Through this endpoint customers can list their transactions' unspent outputs by `address`.

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

api_instance = CryptoApis::UTXOBasedApi.new
blockchain = 'bitcoin' # String | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc.
network = 'testnet' # String | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \"mainnet\" is the live network with actual data while networks like \"testnet\", \"ropsten\", \"rinkeby\" are test networks.
address = '2MtzNEqm2D9jcbPJ5mW7Z3AUNwqt3afZH66' # String | Represents the public address, which is a compressed and shortened form of a public key.
opts = {
  context: 'context_example', # String | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. `context` is specified by the user.
  limit: 50, # Integer | Defines how many items should be returned in the response per page basis.
  offset: 10 # Integer | The starting index of the response items, i.e. where the response should start listing the returned items.
}

begin
  # List Unspent Transaction Outputs By Address
  result = api_instance.list_unspent_transaction_outputs_by_address(blockchain, network, address, opts)
  p result
rescue CryptoApis::ApiError => e
  puts "Error when calling UTXOBasedApi->list_unspent_transaction_outputs_by_address: #{e}"
end
```

#### Using the list_unspent_transaction_outputs_by_address_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListUnspentTransactionOutputsByAddressR>, Integer, Hash)> list_unspent_transaction_outputs_by_address_with_http_info(blockchain, network, address, opts)

```ruby
begin
  # List Unspent Transaction Outputs By Address
  data, status_code, headers = api_instance.list_unspent_transaction_outputs_by_address_with_http_info(blockchain, network, address, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListUnspentTransactionOutputsByAddressR>
rescue CryptoApis::ApiError => e
  puts "Error when calling UTXOBasedApi->list_unspent_transaction_outputs_by_address_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **blockchain** | **String** | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc. |  |
| **network** | **String** | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot;, \&quot;rinkeby\&quot; are test networks. |  |
| **address** | **String** | Represents the public address, which is a compressed and shortened form of a public key. |  |
| **context** | **String** | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user. | [optional] |
| **limit** | **Integer** | Defines how many items should be returned in the response per page basis. | [optional][default to 50] |
| **offset** | **Integer** | The starting index of the response items, i.e. where the response should start listing the returned items. | [optional][default to 0] |

### Return type

[**ListUnspentTransactionOutputsByAddressR**](ListUnspentTransactionOutputsByAddressR.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

