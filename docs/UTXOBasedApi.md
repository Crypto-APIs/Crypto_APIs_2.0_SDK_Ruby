# CryptoApis::UTXOBasedApi

All URIs are relative to *https://rest.cryptoapis.io/v2*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_hd_wallet__x_pub_y_pub_z_pub_details**](UTXOBasedApi.md#get_hd_wallet__x_pub_y_pub_z_pub_details) | **GET** /blockchain-data/{blockchain}/{network}/hd/{extendedPublicKey}/details | Get HD Wallet (xPub, yPub, zPub) Details |
| [**list_hd_wallet__x_pub_y_pub_z_pub_transactions**](UTXOBasedApi.md#list_hd_wallet__x_pub_y_pub_z_pub_transactions) | **GET** /blockchain-data/{blockchain}/{network}/hd/{extendedPublicKey}/transactions | List HD Wallet (xPub, yPub, zPub) Transactions |
| [**sync_hd_wallet__x_pub_y_pub_z_pub**](UTXOBasedApi.md#sync_hd_wallet__x_pub_y_pub_z_pub) | **POST** /blockchain-data/{blockchain}/{network}/hd/sync | Sync HD Wallet (xPub, yPub, zPub) |


## get_hd_wallet__x_pub_y_pub_z_pub_details

> <GetHDWalletXPubYPubZPubDetailsR> get_hd_wallet__x_pub_y_pub_z_pub_details(blockchain, extended_public_key, network, opts)

Get HD Wallet (xPub, yPub, zPub) Details

HD wallet details is useful endpoint to get the most important data about HD wallet without the need to do a lot of calculations, once the HD Wallet is synced using Sync endpoint we keep it up to date and we calculate these details in advance.

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
extended_public_key = 'upub5Ei6bRNneqozk6smK7dvtXHC5PjUyEL4ynCfMKvjznLcXi9DQaikETzQjHvJC43XexMvQs64jxB1njMjCHpRZ4xQWAmv3ge9cVtjfsHmbvQ' # String | Defines the account extended publicly known key which is used to derive all child public keys.
network = 'mainnet' # String | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \"mainnet\" is the live network with actual data while networks like \"testnet\", \"ropsten\", \"rinkeby\" are test networks.
opts = {
  context: 'context_example', # String | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. `context` is specified by the user.
  derivation: 'account' # String | The way how the HD walled derives, for example when the type is ACCOUNT, it derives change and receive addresses while when the type is BIP32 it derives directly.
}

begin
  # Get HD Wallet (xPub, yPub, zPub) Details
  result = api_instance.get_hd_wallet__x_pub_y_pub_z_pub_details(blockchain, extended_public_key, network, opts)
  p result
rescue CryptoApis::ApiError => e
  puts "Error when calling UTXOBasedApi->get_hd_wallet__x_pub_y_pub_z_pub_details: #{e}"
end
```

#### Using the get_hd_wallet__x_pub_y_pub_z_pub_details_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetHDWalletXPubYPubZPubDetailsR>, Integer, Hash)> get_hd_wallet__x_pub_y_pub_z_pub_details_with_http_info(blockchain, extended_public_key, network, opts)

```ruby
begin
  # Get HD Wallet (xPub, yPub, zPub) Details
  data, status_code, headers = api_instance.get_hd_wallet__x_pub_y_pub_z_pub_details_with_http_info(blockchain, extended_public_key, network, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetHDWalletXPubYPubZPubDetailsR>
rescue CryptoApis::ApiError => e
  puts "Error when calling UTXOBasedApi->get_hd_wallet__x_pub_y_pub_z_pub_details_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **blockchain** | **String** | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc. |  |
| **extended_public_key** | **String** | Defines the account extended publicly known key which is used to derive all child public keys. |  |
| **network** | **String** | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot;, \&quot;rinkeby\&quot; are test networks. |  |
| **context** | **String** | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user. | [optional] |
| **derivation** | **String** | The way how the HD walled derives, for example when the type is ACCOUNT, it derives change and receive addresses while when the type is BIP32 it derives directly. | [optional] |

### Return type

[**GetHDWalletXPubYPubZPubDetailsR**](GetHDWalletXPubYPubZPubDetailsR.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_hd_wallet__x_pub_y_pub_z_pub_transactions

> <ListHDWalletXPubYPubZPubTransactionsR> list_hd_wallet__x_pub_y_pub_z_pub_transactions(blockchain, extended_public_key, network, opts)

List HD Wallet (xPub, yPub, zPub) Transactions

This endpoint will list HD Wallet transactions.    {note}Please note that listing data from the same type will apply pagination on the results.{/note}

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
blockchain = 'bitcoin' # String | Represents the specific blockchain.
extended_public_key = 'tpubD9GMECjiZHCaF9NHSMAeMbQMXnM7CviEJZsYBuztVwsUjPHWjxewWAUXWV2UExaAtoEvQGXDBmVWo6ZHGtj6TsH6Pop7D9DskQwGHA1gu1w' # String | Defines the master public key (xPub) of the account.
network = 'mainnet' # String | Represents the specific network.
opts = {
  context: 'context_example', # String | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. `context` is specified by the user.
  derivation: 'account', # String | The way how the HD walled derives, for example when the type is ACCOUNT, it derives change and receive addresses while when the type is BIP32 it derives directly.
  limit: 50, # Integer | Defines how many items should be returned in the response per page basis.
  offset: 10 # Integer | The starting index of the response items, i.e. where the response should start listing the returned items.
}

begin
  # List HD Wallet (xPub, yPub, zPub) Transactions
  result = api_instance.list_hd_wallet__x_pub_y_pub_z_pub_transactions(blockchain, extended_public_key, network, opts)
  p result
rescue CryptoApis::ApiError => e
  puts "Error when calling UTXOBasedApi->list_hd_wallet__x_pub_y_pub_z_pub_transactions: #{e}"
end
```

#### Using the list_hd_wallet__x_pub_y_pub_z_pub_transactions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListHDWalletXPubYPubZPubTransactionsR>, Integer, Hash)> list_hd_wallet__x_pub_y_pub_z_pub_transactions_with_http_info(blockchain, extended_public_key, network, opts)

```ruby
begin
  # List HD Wallet (xPub, yPub, zPub) Transactions
  data, status_code, headers = api_instance.list_hd_wallet__x_pub_y_pub_z_pub_transactions_with_http_info(blockchain, extended_public_key, network, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListHDWalletXPubYPubZPubTransactionsR>
rescue CryptoApis::ApiError => e
  puts "Error when calling UTXOBasedApi->list_hd_wallet__x_pub_y_pub_z_pub_transactions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **blockchain** | **String** | Represents the specific blockchain. |  |
| **extended_public_key** | **String** | Defines the master public key (xPub) of the account. |  |
| **network** | **String** | Represents the specific network. |  |
| **context** | **String** | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user. | [optional] |
| **derivation** | **String** | The way how the HD walled derives, for example when the type is ACCOUNT, it derives change and receive addresses while when the type is BIP32 it derives directly. | [optional] |
| **limit** | **Integer** | Defines how many items should be returned in the response per page basis. | [optional][default to 50] |
| **offset** | **Integer** | The starting index of the response items, i.e. where the response should start listing the returned items. | [optional][default to 0] |

### Return type

[**ListHDWalletXPubYPubZPubTransactionsR**](ListHDWalletXPubYPubZPubTransactionsR.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## sync_hd_wallet__x_pub_y_pub_z_pub

> <SyncHDWalletXPubYPubZPubR> sync_hd_wallet__x_pub_y_pub_z_pub(blockchain, network, opts)

Sync HD Wallet (xPub, yPub, zPub)

HD wallets usually have a lot of addresses and transactions, getting the data on demand is a heavy operation. That's why we have created this feature, to be able to get HD wallet details or transactions this HD wallet must be synced first. In addition to the initial sync we keep updating the synced HD wallets all the time.

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
network = 'mainnet' # String | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \"mainnet\" is the live network with actual data while networks like \"testnet\", \"ropsten\", \"rinkeby\" are test networks.
opts = {
  context: 'context_example', # String | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. `context` is specified by the user.
  sync_hd_wallet_x_pub_y_pub_z_pub_rb: CryptoApis::SyncHDWalletXPubYPubZPubRB.new({data: CryptoApis::SyncHDWalletXPubYPubZPubRBData.new({item: CryptoApis::SyncHDWalletXPubYPubZPubRBDataItem.new({extended_public_key: 'upub5Ei6bRNneqozk6smK7dvtXHC5PjUyEL4ynCfMKvjznLcXi9DQaikETzQjHvJC43XexMvQs64jxB1njMjCHpRZ4xQWAmv3ge9cVtjfsHmbvQ'})})}) # SyncHDWalletXPubYPubZPubRB | 
}

begin
  # Sync HD Wallet (xPub, yPub, zPub)
  result = api_instance.sync_hd_wallet__x_pub_y_pub_z_pub(blockchain, network, opts)
  p result
rescue CryptoApis::ApiError => e
  puts "Error when calling UTXOBasedApi->sync_hd_wallet__x_pub_y_pub_z_pub: #{e}"
end
```

#### Using the sync_hd_wallet__x_pub_y_pub_z_pub_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SyncHDWalletXPubYPubZPubR>, Integer, Hash)> sync_hd_wallet__x_pub_y_pub_z_pub_with_http_info(blockchain, network, opts)

```ruby
begin
  # Sync HD Wallet (xPub, yPub, zPub)
  data, status_code, headers = api_instance.sync_hd_wallet__x_pub_y_pub_z_pub_with_http_info(blockchain, network, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SyncHDWalletXPubYPubZPubR>
rescue CryptoApis::ApiError => e
  puts "Error when calling UTXOBasedApi->sync_hd_wallet__x_pub_y_pub_z_pub_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **blockchain** | **String** | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc. |  |
| **network** | **String** | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot;, \&quot;rinkeby\&quot; are test networks. |  |
| **context** | **String** | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user. | [optional] |
| **sync_hd_wallet_x_pub_y_pub_z_pub_rb** | [**SyncHDWalletXPubYPubZPubRB**](SyncHDWalletXPubYPubZPubRB.md) |  | [optional] |

### Return type

[**SyncHDWalletXPubYPubZPubR**](SyncHDWalletXPubYPubZPubR.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

