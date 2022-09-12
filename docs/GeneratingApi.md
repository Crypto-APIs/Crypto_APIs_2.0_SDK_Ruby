# CryptoApis::GeneratingApi

All URIs are relative to *https://rest.cryptoapis.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**generate_deposit_address**](GeneratingApi.md#generate_deposit_address) | **POST** /wallet-as-a-service/wallets/{walletId}/{blockchain}/{network}/addresses | Generate Deposit Address |


## generate_deposit_address

> <GenerateDepositAddressR> generate_deposit_address(blockchain, network, wallet_id, opts)

Generate Deposit Address

Through this endpoint customers can generate a new Receiving/Deposit Addresses into their Wallet.

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

api_instance = CryptoApis::GeneratingApi.new
blockchain = 'bitcoin' # String | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc.
network = 'mainnet' # String | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \"mainnet\" is the live network with actual data while networks like \"testnet\", \"ropsten\" are test networks.
wallet_id = '60c9d9921c38030006675ff6' # String | Represents the unique ID of the specific Wallet.
opts = {
  context: 'yourExampleString', # String | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. `context` is specified by the user.
  generate_deposit_address_rb: CryptoApis::GenerateDepositAddressRB.new({data: CryptoApis::GenerateDepositAddressRBData.new({item: CryptoApis::GenerateDepositAddressRBDataItem.new({label: 'yourLabelStringHere'})})}) # GenerateDepositAddressRB | 
}

begin
  # Generate Deposit Address
  result = api_instance.generate_deposit_address(blockchain, network, wallet_id, opts)
  p result
rescue CryptoApis::ApiError => e
  puts "Error when calling GeneratingApi->generate_deposit_address: #{e}"
end
```

#### Using the generate_deposit_address_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GenerateDepositAddressR>, Integer, Hash)> generate_deposit_address_with_http_info(blockchain, network, wallet_id, opts)

```ruby
begin
  # Generate Deposit Address
  data, status_code, headers = api_instance.generate_deposit_address_with_http_info(blockchain, network, wallet_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GenerateDepositAddressR>
rescue CryptoApis::ApiError => e
  puts "Error when calling GeneratingApi->generate_deposit_address_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **blockchain** | **String** | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc. |  |
| **network** | **String** | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot; are test networks. |  |
| **wallet_id** | **String** | Represents the unique ID of the specific Wallet. |  |
| **context** | **String** | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user. | [optional] |
| **generate_deposit_address_rb** | [**GenerateDepositAddressRB**](GenerateDepositAddressRB.md) |  | [optional] |

### Return type

[**GenerateDepositAddressR**](GenerateDepositAddressR.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

