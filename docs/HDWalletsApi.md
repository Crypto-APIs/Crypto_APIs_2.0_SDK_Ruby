# CryptoApis::HDWalletsApi

All URIs are relative to *https://rest.cryptoapis.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**derive_and_sync_new_change_addresses**](HDWalletsApi.md#derive_and_sync_new_change_addresses) | **POST** /blockchain-data/{blockchain}/{network}/hd/derive-sync-change | Derive And Sync New Change Addresses |
| [**derive_and_sync_new_receiving_addresses**](HDWalletsApi.md#derive_and_sync_new_receiving_addresses) | **POST** /blockchain-data/{blockchain}/{network}/hd/derive-and-sync | Derive And Sync New Receiving Addresses |
| [**get_hd_wallet__x_pub_y_pub_z_pub_assets**](HDWalletsApi.md#get_hd_wallet__x_pub_y_pub_z_pub_assets) | **GET** /blockchain-data/{blockchain}/{network}/hd/{extendedPublicKey}/assets | Get HD Wallet (xPub, yPub, zPub) Assets |
| [**get_hd_wallet__x_pub_y_pub_z_pub_details**](HDWalletsApi.md#get_hd_wallet__x_pub_y_pub_z_pub_details) | **GET** /blockchain-data/{blockchain}/{network}/hd/{extendedPublicKey}/details | Get HD Wallet (xPub, yPub, zPub) Details |
| [**list_hd_wallet__x_pub_y_pub_z_pub_transactions**](HDWalletsApi.md#list_hd_wallet__x_pub_y_pub_z_pub_transactions) | **GET** /blockchain-data/{blockchain}/{network}/hd/{extendedPublicKey}/transactions | List HD Wallet (xPub, yPub, zPub) Transactions |
| [**list_hd_wallet__x_pub_y_pub_z_pub_utxos**](HDWalletsApi.md#list_hd_wallet__x_pub_y_pub_z_pub_utxos) | **GET** /blockchain-data/{blockchain}/{network}/hd/{extendedPublicKey}/utxos | List HD Wallet (xPub, yPub, zPub) UTXOs |
| [**list_synced_addresses**](HDWalletsApi.md#list_synced_addresses) | **GET** /blockchain-data/{blockchain}/{network}/hd/{extendedPublicKey}/synced-addresses | List Synced Addresses |
| [**prepare_a_utxo_based_transaction_from_hd_wallet__x_pub_y_pub_z_pub**](HDWalletsApi.md#prepare_a_utxo_based_transaction_from_hd_wallet__x_pub_y_pub_z_pub) | **POST** /blockchain-data/{blockchain}/{network}/transactions/prepare-utxo-transaction | Prepare A UTXO-Based Transaction From HD Wallet (xPub, yPub, zPub) |
| [**prepare_an_account_based_transaction_from_hd_wallet__x_pub_y_pub_z_pub**](HDWalletsApi.md#prepare_an_account_based_transaction_from_hd_wallet__x_pub_y_pub_z_pub) | **POST** /blockchain-data/{blockchain}/{network}/transactions/prepare-account-based-transaction | Prepare An Account-Based Transaction From HD Wallet (xPub, yPub, zPub) |
| [**sync_hd_wallet__x_pub_y_pub_z_pub**](HDWalletsApi.md#sync_hd_wallet__x_pub_y_pub_z_pub) | **POST** /blockchain-data/{blockchain}/{network}/hd/sync | Sync HD Wallet (xPub, yPub, zPub) |
| [**sync_new_hd_wallet__x_pub_y_pub_z_pub**](HDWalletsApi.md#sync_new_hd_wallet__x_pub_y_pub_z_pub) | **POST** /blockchain-data/{blockchain}/{network}/hd/sync-new | Sync New HD Wallet (xPub, yPub, zPub) |


## derive_and_sync_new_change_addresses

> <DeriveAndSyncNewChangeAddressesR> derive_and_sync_new_change_addresses(blockchain, network, opts)

Derive And Sync New Change Addresses

Through this endpoint users can derive 100 change addresses, starting from the last index we have data for, which are then added to the xPub, subscribed for syncing, and start recording data. If no data is available, it will start from index 0.

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
  derive_and_sync_new_change_addresses_rb: CryptoApis::DeriveAndSyncNewChangeAddressesRB.new({data: CryptoApis::DeriveAndSyncNewChangeAddressesRBData.new({item: CryptoApis::DeriveAndSyncNewChangeAddressesRBDataItem.new({extended_public_key: 'xpub6BuJ8T4xTEePRTWxEcyyZRHPRZw91GFRjuu4H1eNqNGDswpraD5Hthf7JBbK7iQayuLf2MbxT6MVrKGbY7HvBcQo937Qiwmxz7Fzy9S5y9q'})})}) # DeriveAndSyncNewChangeAddressesRB | 
}

begin
  # Derive And Sync New Change Addresses
  result = api_instance.derive_and_sync_new_change_addresses(blockchain, network, opts)
  p result
rescue CryptoApis::ApiError => e
  puts "Error when calling HDWalletsApi->derive_and_sync_new_change_addresses: #{e}"
end
```

#### Using the derive_and_sync_new_change_addresses_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeriveAndSyncNewChangeAddressesR>, Integer, Hash)> derive_and_sync_new_change_addresses_with_http_info(blockchain, network, opts)

```ruby
begin
  # Derive And Sync New Change Addresses
  data, status_code, headers = api_instance.derive_and_sync_new_change_addresses_with_http_info(blockchain, network, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeriveAndSyncNewChangeAddressesR>
rescue CryptoApis::ApiError => e
  puts "Error when calling HDWalletsApi->derive_and_sync_new_change_addresses_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **blockchain** | **String** | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc. |  |
| **network** | **String** | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot; are test networks. |  |
| **context** | **String** | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user. | [optional] |
| **derive_and_sync_new_change_addresses_rb** | [**DeriveAndSyncNewChangeAddressesRB**](DeriveAndSyncNewChangeAddressesRB.md) |  | [optional] |

### Return type

[**DeriveAndSyncNewChangeAddressesR**](DeriveAndSyncNewChangeAddressesR.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## derive_and_sync_new_receiving_addresses

> <DeriveAndSyncNewReceivingAddressesR> derive_and_sync_new_receiving_addresses(blockchain, network, opts)

Derive And Sync New Receiving Addresses

Through this endpoint users can derive 100 receiving addresses, starting from the last index we have data for, which are then added to the xPub, subscribed for syncing, and start recording data. If no data is available, it will start from index 0.

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
  derive_and_sync_new_receiving_addresses_rb: CryptoApis::DeriveAndSyncNewReceivingAddressesRB.new({data: CryptoApis::DeriveAndSyncNewReceivingAddressesRBData.new({item: CryptoApis::DeriveAndSyncNewReceivingAddressesRBDataItem.new({extended_public_key: 'xpub6DSqNgZke91RZBXk9s8tBknGPiVB7AQqVyxHCLEM49D3VGeMWg6qmSDruSn7SgQApVH1M8cSvjXfDmhRysDt9hZWFAMcZf4X1DAzd23G4ZQ'})})}) # DeriveAndSyncNewReceivingAddressesRB | 
}

begin
  # Derive And Sync New Receiving Addresses
  result = api_instance.derive_and_sync_new_receiving_addresses(blockchain, network, opts)
  p result
rescue CryptoApis::ApiError => e
  puts "Error when calling HDWalletsApi->derive_and_sync_new_receiving_addresses: #{e}"
end
```

#### Using the derive_and_sync_new_receiving_addresses_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeriveAndSyncNewReceivingAddressesR>, Integer, Hash)> derive_and_sync_new_receiving_addresses_with_http_info(blockchain, network, opts)

```ruby
begin
  # Derive And Sync New Receiving Addresses
  data, status_code, headers = api_instance.derive_and_sync_new_receiving_addresses_with_http_info(blockchain, network, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeriveAndSyncNewReceivingAddressesR>
rescue CryptoApis::ApiError => e
  puts "Error when calling HDWalletsApi->derive_and_sync_new_receiving_addresses_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **blockchain** | **String** | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc. |  |
| **network** | **String** | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot; are test networks. |  |
| **context** | **String** | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user. | [optional] |
| **derive_and_sync_new_receiving_addresses_rb** | [**DeriveAndSyncNewReceivingAddressesRB**](DeriveAndSyncNewReceivingAddressesRB.md) |  | [optional] |

### Return type

[**DeriveAndSyncNewReceivingAddressesR**](DeriveAndSyncNewReceivingAddressesR.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


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


## list_synced_addresses

> <ListSyncedAddressesR> list_synced_addresses(blockchain, extended_public_key, network, opts)

List Synced Addresses

Through this endpoint users can list all addresses that Crypto APIs has synced for a specific xPub. This includes previous and current/new xPubs, what addresses we’ve synced for them, etc.

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
extended_public_key = 'tpubD9GMECjiZHCaF9NHSMAeMbQMXnM7CviEJZsYBuztVwsUjPHWjxewWAUXWV2UExaAtoEvQGXDBmVWo6ZHGtj6TsH6Pop7D9DskQwGHA1gu1w' # String | Defines the account extended publicly known key which is used to derive all child public keys.
network = 'mainnet' # String | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \"mainnet\" is the live network with actual data while networks like \"testnet\", \"ropsten\" are test networks.
opts = {
  context: 'yourExampleString', # String | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. `context` is specified by the user.
  address_format: 'p2pkh', # String | Defines the address format value.
  is_change_address: false, # Boolean | Defines if the address is change addres or not.
  limit: 50, # Integer | Defines how many items should be returned in the response per page basis.
  offset: 0 # Integer | The starting index of the response items, i.e. where the response should start listing the returned items.
}

begin
  # List Synced Addresses
  result = api_instance.list_synced_addresses(blockchain, extended_public_key, network, opts)
  p result
rescue CryptoApis::ApiError => e
  puts "Error when calling HDWalletsApi->list_synced_addresses: #{e}"
end
```

#### Using the list_synced_addresses_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListSyncedAddressesR>, Integer, Hash)> list_synced_addresses_with_http_info(blockchain, extended_public_key, network, opts)

```ruby
begin
  # List Synced Addresses
  data, status_code, headers = api_instance.list_synced_addresses_with_http_info(blockchain, extended_public_key, network, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListSyncedAddressesR>
rescue CryptoApis::ApiError => e
  puts "Error when calling HDWalletsApi->list_synced_addresses_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **blockchain** | **String** | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc. |  |
| **extended_public_key** | **String** | Defines the account extended publicly known key which is used to derive all child public keys. |  |
| **network** | **String** | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot; are test networks. |  |
| **context** | **String** | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user. | [optional] |
| **address_format** | **String** | Defines the address format value. | [optional] |
| **is_change_address** | **Boolean** | Defines if the address is change addres or not. | [optional][default to true] |
| **limit** | **Integer** | Defines how many items should be returned in the response per page basis. | [optional][default to 50] |
| **offset** | **Integer** | The starting index of the response items, i.e. where the response should start listing the returned items. | [optional][default to 0] |

### Return type

[**ListSyncedAddressesR**](ListSyncedAddressesR.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## prepare_a_utxo_based_transaction_from_hd_wallet__x_pub_y_pub_z_pub

> <PrepareAUTXOBasedTransactionFromHDWalletXPubYPubZPubR> prepare_a_utxo_based_transaction_from_hd_wallet__x_pub_y_pub_z_pub(blockchain, network, opts)

Prepare A UTXO-Based Transaction From HD Wallet (xPub, yPub, zPub)

Through the “Prepare a UTXO-based transaction from xPub” endpoint users can prepare a transaction for signing from all synced with Crypto APIs addresses for the specific xPub. This is based on the `selectionStrategy` and the addresses’ balances. In the case a user has an address not synced with Crypto APIs, it will not be included. This endpoint applies to all supported UTXO-based blockchain protocols, e.g. Bitcoin, Litecoin, etc.

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
blockchain = 'bitcoin' # String | 
network = 'testnet' # String | 
opts = {
  context: 'yourExampleString', # String | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. `context` is specified by the user.
  prepare_autxo_based_transaction_from_hd_wallet_x_pub_y_pub_z_pub_rb: CryptoApis::PrepareAUTXOBasedTransactionFromHDWalletXPubYPubZPubRB.new({data: CryptoApis::PrepareAUTXOBasedTransactionFromHDWalletXPubYPubZPubRBData.new({item: CryptoApis::PrepareAUTXOBasedTransactionFromHDWalletXPubYPubZPubRBDataItem.new({fee: CryptoApis::PrepareAUTXOBasedTransactionFromHDWalletXPubYPubZPubRBDataItemFee.new, recipients: [CryptoApis::PrepareAUTXOBasedTransactionFromHDWalletXPubYPubZPubRBDataItemRecipientsInner.new({address: 'tb1q8wus03xdv3t6aknmsnpd0jmeu7dgh93j34pj5a', amount: '0.00003'})], xpub: 'tpubDCNoSqt3HF32yq8VU6mgapTuW1FzENZa3C5dKUF6WCQzubWz2nA1yxUhMQWkhhkD58Uc8YiuD8cmB3y5tihqAv4zT2GNyqKTNLchHJmsvt9'})})}) # PrepareAUTXOBasedTransactionFromHDWalletXPubYPubZPubRB | 
}

begin
  # Prepare A UTXO-Based Transaction From HD Wallet (xPub, yPub, zPub)
  result = api_instance.prepare_a_utxo_based_transaction_from_hd_wallet__x_pub_y_pub_z_pub(blockchain, network, opts)
  p result
rescue CryptoApis::ApiError => e
  puts "Error when calling HDWalletsApi->prepare_a_utxo_based_transaction_from_hd_wallet__x_pub_y_pub_z_pub: #{e}"
end
```

#### Using the prepare_a_utxo_based_transaction_from_hd_wallet__x_pub_y_pub_z_pub_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PrepareAUTXOBasedTransactionFromHDWalletXPubYPubZPubR>, Integer, Hash)> prepare_a_utxo_based_transaction_from_hd_wallet__x_pub_y_pub_z_pub_with_http_info(blockchain, network, opts)

```ruby
begin
  # Prepare A UTXO-Based Transaction From HD Wallet (xPub, yPub, zPub)
  data, status_code, headers = api_instance.prepare_a_utxo_based_transaction_from_hd_wallet__x_pub_y_pub_z_pub_with_http_info(blockchain, network, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PrepareAUTXOBasedTransactionFromHDWalletXPubYPubZPubR>
rescue CryptoApis::ApiError => e
  puts "Error when calling HDWalletsApi->prepare_a_utxo_based_transaction_from_hd_wallet__x_pub_y_pub_z_pub_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **blockchain** | **String** |  |  |
| **network** | **String** |  |  |
| **context** | **String** | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user. | [optional] |
| **prepare_autxo_based_transaction_from_hd_wallet_x_pub_y_pub_z_pub_rb** | [**PrepareAUTXOBasedTransactionFromHDWalletXPubYPubZPubRB**](PrepareAUTXOBasedTransactionFromHDWalletXPubYPubZPubRB.md) |  | [optional] |

### Return type

[**PrepareAUTXOBasedTransactionFromHDWalletXPubYPubZPubR**](PrepareAUTXOBasedTransactionFromHDWalletXPubYPubZPubR.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## prepare_an_account_based_transaction_from_hd_wallet__x_pub_y_pub_z_pub

> <PrepareAnAccountBasedTransactionFromHDWalletXPubYPubZPubR> prepare_an_account_based_transaction_from_hd_wallet__x_pub_y_pub_z_pub(blockchain, network, opts)

Prepare An Account-Based Transaction From HD Wallet (xPub, yPub, zPub)

Through the “Prepare an account-based transaction from xPub” endpoint users can prepare a transaction for signing from a synced with Crypto APIs address from the specific xPub. This endpoint applies to all supported account-based blockchain protocols, e.g. Ethereum, BSC, etc

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
blockchain = 'ethereum' # String | 
network = 'mainnet' # String | 
opts = {
  context: 'yourExampleString', # String | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. `context` is specified by the user.
  prepare_an_account_based_transaction_from_hd_wallet_x_pub_y_pub_z_pub_rb: CryptoApis::PrepareAnAccountBasedTransactionFromHDWalletXPubYPubZPubRB.new({data: CryptoApis::PrepareAnAccountBasedTransactionFromHDWalletXPubYPubZPubRBData.new({item: CryptoApis::PrepareAnAccountBasedTransactionFromHDWalletXPubYPubZPubRBDataItem.new({amount: '0.000003', fee: CryptoApis::PrepareAnAccountBasedTransactionFromHDWalletXPubYPubZPubRBDataItemFee.new, recipient: '0x041c594a0cc194e826bef5411b29c7f27001b7e3', sender: '0x03654A9E78771442CAdf8DB37ae60D6a12bAEa9f', xpub: 'xpub6CsGdqTDEVRnLmpWN218HBwJqfhqSx46iA8ByzEA5Bz9jfwU3TSg9U7ambKgJyykvCraHQ6sAFAddMGFdPzhXrRanKbHnnkbDTyRPyn5gRJ'})})}) # PrepareAnAccountBasedTransactionFromHDWalletXPubYPubZPubRB | 
}

begin
  # Prepare An Account-Based Transaction From HD Wallet (xPub, yPub, zPub)
  result = api_instance.prepare_an_account_based_transaction_from_hd_wallet__x_pub_y_pub_z_pub(blockchain, network, opts)
  p result
rescue CryptoApis::ApiError => e
  puts "Error when calling HDWalletsApi->prepare_an_account_based_transaction_from_hd_wallet__x_pub_y_pub_z_pub: #{e}"
end
```

#### Using the prepare_an_account_based_transaction_from_hd_wallet__x_pub_y_pub_z_pub_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PrepareAnAccountBasedTransactionFromHDWalletXPubYPubZPubR>, Integer, Hash)> prepare_an_account_based_transaction_from_hd_wallet__x_pub_y_pub_z_pub_with_http_info(blockchain, network, opts)

```ruby
begin
  # Prepare An Account-Based Transaction From HD Wallet (xPub, yPub, zPub)
  data, status_code, headers = api_instance.prepare_an_account_based_transaction_from_hd_wallet__x_pub_y_pub_z_pub_with_http_info(blockchain, network, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PrepareAnAccountBasedTransactionFromHDWalletXPubYPubZPubR>
rescue CryptoApis::ApiError => e
  puts "Error when calling HDWalletsApi->prepare_an_account_based_transaction_from_hd_wallet__x_pub_y_pub_z_pub_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **blockchain** | **String** |  |  |
| **network** | **String** |  |  |
| **context** | **String** | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user. | [optional] |
| **prepare_an_account_based_transaction_from_hd_wallet_x_pub_y_pub_z_pub_rb** | [**PrepareAnAccountBasedTransactionFromHDWalletXPubYPubZPubRB**](PrepareAnAccountBasedTransactionFromHDWalletXPubYPubZPubRB.md) |  | [optional] |

### Return type

[**PrepareAnAccountBasedTransactionFromHDWalletXPubYPubZPubR**](PrepareAnAccountBasedTransactionFromHDWalletXPubYPubZPubR.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
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


## sync_new_hd_wallet__x_pub_y_pub_z_pub

> <SyncNewHDWalletXPubYPubZPubR> sync_new_hd_wallet__x_pub_y_pub_z_pub(blockchain, network, opts)

Sync New HD Wallet (xPub, yPub, zPub)

Through this endpoint users can add a brand new xPub to the Crypto APIs system to be ready for deriving. Unlike our other similar endpoint “Sync HD Wallet (xPub, yPub, zPub)”, this endpoint does not create new addresses nor syncs old data.

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
  sync_new_hd_wallet_x_pub_y_pub_z_pub_rb: CryptoApis::SyncNewHDWalletXPubYPubZPubRB.new({data: CryptoApis::SyncHDWalletXPubYPubZPubRBData.new({item: CryptoApis::SyncHDWalletXPubYPubZPubRBDataItem.new({extended_public_key: 'upub5Ei6bRNneqozk6smK7dvtXHC5PjUyEL4ynCfMKvjznLcXi9DQaikETzQjHvJC43XexMvQs64jxB1njMjCHpRZ4xQWAmv3ge9cVtjfsHmbvQ'})})}) # SyncNewHDWalletXPubYPubZPubRB | 
}

begin
  # Sync New HD Wallet (xPub, yPub, zPub)
  result = api_instance.sync_new_hd_wallet__x_pub_y_pub_z_pub(blockchain, network, opts)
  p result
rescue CryptoApis::ApiError => e
  puts "Error when calling HDWalletsApi->sync_new_hd_wallet__x_pub_y_pub_z_pub: #{e}"
end
```

#### Using the sync_new_hd_wallet__x_pub_y_pub_z_pub_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SyncNewHDWalletXPubYPubZPubR>, Integer, Hash)> sync_new_hd_wallet__x_pub_y_pub_z_pub_with_http_info(blockchain, network, opts)

```ruby
begin
  # Sync New HD Wallet (xPub, yPub, zPub)
  data, status_code, headers = api_instance.sync_new_hd_wallet__x_pub_y_pub_z_pub_with_http_info(blockchain, network, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SyncNewHDWalletXPubYPubZPubR>
rescue CryptoApis::ApiError => e
  puts "Error when calling HDWalletsApi->sync_new_hd_wallet__x_pub_y_pub_z_pub_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **blockchain** | **String** | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc. |  |
| **network** | **String** | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot; are test networks. |  |
| **context** | **String** | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user. | [optional] |
| **sync_new_hd_wallet_x_pub_y_pub_z_pub_rb** | [**SyncNewHDWalletXPubYPubZPubRB**](SyncNewHDWalletXPubYPubZPubRB.md) |  | [optional] |

### Return type

[**SyncNewHDWalletXPubYPubZPubR**](SyncNewHDWalletXPubYPubZPubR.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

