# CryptoApis::HDWalletsApi

All URIs are relative to *https://rest.cryptoapis.io/v2*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_hd_wallet__x_pub_y_pub_z_pub_assets**](HDWalletsApi.md#get_hd_wallet__x_pub_y_pub_z_pub_assets) | **GET** /blockchain-data/{blockchain}/{network}/hd/{extendedPublicKey}/assets | Get HD Wallet (xPub, yPub, zPub) Assets |
| [**get_hd_wallet__x_pub_y_pub_z_pub_details**](HDWalletsApi.md#get_hd_wallet__x_pub_y_pub_z_pub_details) | **GET** /blockchain-data/{blockchain}/{network}/hd/{extendedPublicKey}/details | Get HD Wallet (xPub, yPub, zPub) Details |
| [**list_hd_wallet__x_pub_y_pub_z_pub_transactions**](HDWalletsApi.md#list_hd_wallet__x_pub_y_pub_z_pub_transactions) | **GET** /blockchain-data/{blockchain}/{network}/hd/{extendedPublicKey}/transactions | List HD Wallet (xPub, yPub, zPub) Transactions |
| [**list_hd_wallet__x_pub_y_pub_z_pub_utxos**](HDWalletsApi.md#list_hd_wallet__x_pub_y_pub_z_pub_utxos) | **GET** /blockchain-data/{blockchain}/{network}/hd/{extendedPublicKey}/utxos | List HD Wallet (xPub, yPub, zPub) UTXOs |
| [**sync_hd_wallet__x_pub_y_pub_z_pub**](HDWalletsApi.md#sync_hd_wallet__x_pub_y_pub_z_pub) | **POST** /blockchain-data/{blockchain}/{network}/hd/sync | Sync HD Wallet (xPub, yPub, zPub) |


## get_hd_wallet__x_pub_y_pub_z_pub_assets

> <GetHDWalletXPubYPubZPubAssetsR> get_hd_wallet__x_pub_y_pub_z_pub_assets(blockchain, extended_public_key, network, opts)

Get HD Wallet (xPub, yPub, zPub) Assets

This endpoint will return details on assets we support for a specified from the customer extended public key (xPub). These could be cryptocurrencies, fungible or non-fungible (NFT) tokens. Each asset has a unique identifier - assetId, and a unique symbol in the form of a string, e.g. \"USDT\".

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

api_instance = CryptoApis::HDWalletsApi.new
blockchain = 'bitcoin' # String | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc.
extended_public_key = 'xpub68SyZPMPpZUy9QB2fk2J28b5Rwd6jeWKind3K8oziZuVcL7wWZiXZNCPKuh42ejSpTLYngQ9Gbzj9a1Ap2QQmoFs2sMSbUvkEr8D3GW7MrR' # String | Defines the account extended publicly known key which is used to derive all child public keys.
network = 'mainnet' # String | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \"mainnet\" is the live network with actual data while networks like \"testnet\", \"ropsten\" are test networks.
opts = {
  context: 'yourExampleString', # String | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. `context` is specified by the user.
  derivation: 'account' # String | The way how the HD walled derives, for example when the type is ACCOUNT, it derives change and receive addresses while when the type is BIP32 it derives directly.
}

begin
  # Get HD Wallet (xPub, yPub, zPub) Assets
  result = api_instance.get_hd_wallet__x_pub_y_pub_z_pub_assets(blockchain, extended_public_key, network, opts)
  p result
rescue CryptoApis::ApiError => e
  puts "Error when calling HDWalletsApi->get_hd_wallet__x_pub_y_pub_z_pub_assets: #{e}"
end
```

#### Using the get_hd_wallet__x_pub_y_pub_z_pub_assets_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetHDWalletXPubYPubZPubAssetsR>, Integer, Hash)> get_hd_wallet__x_pub_y_pub_z_pub_assets_with_http_info(blockchain, extended_public_key, network, opts)

```ruby
begin
  # Get HD Wallet (xPub, yPub, zPub) Assets
  data, status_code, headers = api_instance.get_hd_wallet__x_pub_y_pub_z_pub_assets_with_http_info(blockchain, extended_public_key, network, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetHDWalletXPubYPubZPubAssetsR>
rescue CryptoApis::ApiError => e
  puts "Error when calling HDWalletsApi->get_hd_wallet__x_pub_y_pub_z_pub_assets_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **blockchain** | **String** | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc. |  |
| **extended_public_key** | **String** | Defines the account extended publicly known key which is used to derive all child public keys. |  |
| **network** | **String** | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot; are test networks. |  |
| **context** | **String** | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user. | [optional] |
| **derivation** | **String** | The way how the HD walled derives, for example when the type is ACCOUNT, it derives change and receive addresses while when the type is BIP32 it derives directly. | [optional] |

### Return type

[**GetHDWalletXPubYPubZPubAssetsR**](GetHDWalletXPubYPubZPubAssetsR.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


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

api_instance = CryptoApis::HDWalletsApi.new
blockchain = 'bitcoin' # String | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc.
extended_public_key = 'upub5Ei6bRNneqozk6smK7dvtXHC5PjUyEL4ynCfMKvjznLcXi9DQaikETzQjHvJC43XexMvQs64jxB1njMjCHpRZ4xQWAmv3ge9cVtjfsHmbvQ' # String | Defines the account extended publicly known key which is used to derive all child public keys.
network = 'mainnet' # String | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \"mainnet\" is the live network with actual data while networks like \"testnet\", \"ropsten\" are test networks.
opts = {
  context: 'yourExampleString', # String | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. `context` is specified by the user.
  derivation: 'account' # String | The way how the HD walled derives, for example when the type is ACCOUNT, it derives change and receive addresses while when the type is BIP32 it derives directly.
}

begin
  # Get HD Wallet (xPub, yPub, zPub) Details
  result = api_instance.get_hd_wallet__x_pub_y_pub_z_pub_details(blockchain, extended_public_key, network, opts)
  p result
rescue CryptoApis::ApiError => e
  puts "Error when calling HDWalletsApi->get_hd_wallet__x_pub_y_pub_z_pub_details: #{e}"
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
  puts "Error when calling HDWalletsApi->get_hd_wallet__x_pub_y_pub_z_pub_details_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **blockchain** | **String** | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc. |  |
| **extended_public_key** | **String** | Defines the account extended publicly known key which is used to derive all child public keys. |  |
| **network** | **String** | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot; are test networks. |  |
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

This endpoint will list HD Wallet transactions.

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

api_instance = CryptoApis::HDWalletsApi.new
blockchain = 'bitcoin' # String | Represents the specific blockchain.
extended_public_key = 'tpubD9GMECjiZHCaF9NHSMAeMbQMXnM7CviEJZsYBuztVwsUjPHWjxewWAUXWV2UExaAtoEvQGXDBmVWo6ZHGtj6TsH6Pop7D9DskQwGHA1gu1w' # String | Defines the master public key (xPub) of the account.
network = 'mainnet' # String | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \"mainnet\" is the live network with actual data while networks like \"testnet\", \"ropsten\" are test networks.
opts = {
  context: 'yourExampleString', # String | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. `context` is specified by the user.
  derivation: 'account', # String | The way how the HD walled derives, for example when the type is ACCOUNT, it derives change and receive addresses while when the type is BIP32 it derives directly.
  limit: 50, # Integer | Defines how many items should be returned in the response per page basis.
  offset: 0 # Integer | The starting index of the response items, i.e. where the response should start listing the returned items.
}

begin
  # List HD Wallet (xPub, yPub, zPub) Transactions
  result = api_instance.list_hd_wallet__x_pub_y_pub_z_pub_transactions(blockchain, extended_public_key, network, opts)
  p result
rescue CryptoApis::ApiError => e
  puts "Error when calling HDWalletsApi->list_hd_wallet__x_pub_y_pub_z_pub_transactions: #{e}"
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
  puts "Error when calling HDWalletsApi->list_hd_wallet__x_pub_y_pub_z_pub_transactions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **blockchain** | **String** | Represents the specific blockchain. |  |
| **extended_public_key** | **String** | Defines the master public key (xPub) of the account. |  |
| **network** | **String** | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot; are test networks. |  |
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


## list_hd_wallet__x_pub_y_pub_z_pub_utxos

> <ListHDWalletXPubYPubZPubUTXOsR> list_hd_wallet__x_pub_y_pub_z_pub_utxos(blockchain, extended_public_key, network, opts)

List HD Wallet (xPub, yPub, zPub) UTXOs

Through this endpoint you can list HD wallet's UTXOs (Unspent Transaction Outputs) by providing extended public key of an already synced HD wallet.

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

api_instance = CryptoApis::HDWalletsApi.new
blockchain = 'bitcoin' # String | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc.
extended_public_key = 'tpubDDCs6jf3Tg8VTts6EBCNpibVanPQpSkmYRLAXVvuhcuC6ZcbYtEizqERj8D4TBukuvjNSjtjEbKYdtFuRG5WuisrirZG9m5L8wUvf4bHhgQ' # String | Defines the account extended publicly known key which is used to derive all child public keys.
network = 'mainnet' # String | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \"mainnet\" is the live network with actual data while networks like \"testnet\", \"ropsten\" are test networks.
opts = {
  context: 'yourExampleString', # String | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. `context` is specified by the user.
  derivation: 'account', # String | The way how the HD walled derives, for example when the type is ACCOUNT, it derives change and receive addresses while when the type is BIP32 it derives directly.
  limit: 50, # Integer | Defines how many items should be returned in the response per page basis.
  offset: 0 # Integer | The starting index of the response items, i.e. where the response should start listing the returned items.
}

begin
  # List HD Wallet (xPub, yPub, zPub) UTXOs
  result = api_instance.list_hd_wallet__x_pub_y_pub_z_pub_utxos(blockchain, extended_public_key, network, opts)
  p result
rescue CryptoApis::ApiError => e
  puts "Error when calling HDWalletsApi->list_hd_wallet__x_pub_y_pub_z_pub_utxos: #{e}"
end
```

#### Using the list_hd_wallet__x_pub_y_pub_z_pub_utxos_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListHDWalletXPubYPubZPubUTXOsR>, Integer, Hash)> list_hd_wallet__x_pub_y_pub_z_pub_utxos_with_http_info(blockchain, extended_public_key, network, opts)

```ruby
begin
  # List HD Wallet (xPub, yPub, zPub) UTXOs
  data, status_code, headers = api_instance.list_hd_wallet__x_pub_y_pub_z_pub_utxos_with_http_info(blockchain, extended_public_key, network, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListHDWalletXPubYPubZPubUTXOsR>
rescue CryptoApis::ApiError => e
  puts "Error when calling HDWalletsApi->list_hd_wallet__x_pub_y_pub_z_pub_utxos_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **blockchain** | **String** | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc. |  |
| **extended_public_key** | **String** | Defines the account extended publicly known key which is used to derive all child public keys. |  |
| **network** | **String** | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot; are test networks. |  |
| **context** | **String** | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user. | [optional] |
| **derivation** | **String** | The way how the HD walled derives, for example when the type is ACCOUNT, it derives change and receive addresses while when the type is BIP32 it derives directly. | [optional] |
| **limit** | **Integer** | Defines how many items should be returned in the response per page basis. | [optional][default to 50] |
| **offset** | **Integer** | The starting index of the response items, i.e. where the response should start listing the returned items. | [optional][default to 0] |

### Return type

[**ListHDWalletXPubYPubZPubUTXOsR**](ListHDWalletXPubYPubZPubUTXOsR.md)

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

api_instance = CryptoApis::HDWalletsApi.new
blockchain = 'bitcoin' # String | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc.
network = 'mainnet' # String | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \"mainnet\" is the live network with actual data while networks like \"testnet\", \"ropsten\" are test networks.
opts = {
  context: 'yourExampleString', # String | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. `context` is specified by the user.
  sync_hd_wallet_x_pub_y_pub_z_pub_rb: CryptoApis::SyncHDWalletXPubYPubZPubRB.new({data: CryptoApis::SyncHDWalletXPubYPubZPubRBData.new({item: CryptoApis::SyncHDWalletXPubYPubZPubRBDataItem.new({extended_public_key: 'upub5Ei6bRNneqozk6smK7dvtXHC5PjUyEL4ynCfMKvjznLcXi9DQaikETzQjHvJC43XexMvQs64jxB1njMjCHpRZ4xQWAmv3ge9cVtjfsHmbvQ'})})}) # SyncHDWalletXPubYPubZPubRB | 
}

begin
  # Sync HD Wallet (xPub, yPub, zPub)
  result = api_instance.sync_hd_wallet__x_pub_y_pub_z_pub(blockchain, network, opts)
  p result
rescue CryptoApis::ApiError => e
  puts "Error when calling HDWalletsApi->sync_hd_wallet__x_pub_y_pub_z_pub: #{e}"
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
  puts "Error when calling HDWalletsApi->sync_hd_wallet__x_pub_y_pub_z_pub_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **blockchain** | **String** | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc. |  |
| **network** | **String** | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot; are test networks. |  |
| **context** | **String** | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user. | [optional] |
| **sync_hd_wallet_x_pub_y_pub_z_pub_rb** | [**SyncHDWalletXPubYPubZPubRB**](SyncHDWalletXPubYPubZPubRB.md) |  | [optional] |

### Return type

[**SyncHDWalletXPubYPubZPubR**](SyncHDWalletXPubYPubZPubR.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

